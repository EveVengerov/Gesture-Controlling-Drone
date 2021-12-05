import cv2
import mediapipe as mp
import time
import numpy as np
import math

class handDetector():
    def __init__(self, mode=False, maxHands=2, modelComplexity=1, detectionCon=0.75, trackCon=0.75):
        self.mode = mode
        self.maxHands = maxHands
        self.modelComplex = modelComplexity
        self.detectionCon = detectionCon
        self.trackCon = trackCon

        self.mpHands = mp.solutions.hands
        self.hands = self.mpHands.Hands(self.mode, self.maxHands,self.modelComplex,
                                        self.detectionCon, self.trackCon)
        self.mpDraw = mp.solutions.drawing_utils

    def angle_between(self, p1, p2, p3):
        x1, y1, z1 = p1
        x2, y2, z2 = p2
        x3, y3, z3 = p3

        v21 = (x1 - x2, y1 - y2)
        v23 = (x3 - x2, y3 - y2)

        dot = v21[0] * v23[0] + v21[1] * v23[1]
        det = v21[0] * v23[1] - v21[1] * v23[0]

        theta = np.rad2deg(np.arctan2(det, dot))
        return theta

    def detect_gesture(self, lm,scale):

        p0, p4, p8, p12, p17, p20 = lm
       #if 300 <= p0[0] <= 600 and 200 <= p0[1] <= 500:

        p4close = 40 <= math.dist(p4, p0)/scale <= 130
        p8close = 50 <= math.dist(p8, p0)/scale <= 150
        p12close = 30 <= math.dist(p12, p0)/scale <= 150
        p20close = 30 <= math.dist(p20, p0)/scale <= 150
        #print(f'p4close', p4close, f'p8close', p8close, f'p12close', p12close, f'p20close', p20close)

        if p12close:
            if p4close and p8close and p20close:
                return "Stop"
            if p4close and p8close and not p20close:
                return "Right"
            if p4close and p20close and not p8close:
                return "Up"
            if (not p4close) and p8close and p20close:
                return "Left"
        elif p4close and p20close and not p8close:
            if -5 <= self.angle_between(p8, p0, p12) <= 8:
                return "Hold"
            else:
                return "Down"

        return "Donno"
        return None

    def fancyDraw(self, img, bbox, color=(255,0,255),l=30, t=5, rt=1, ):
        x, y, w, h = bbox
        x1, y1 = x + w, y + h

        #cv2.rectangle(img, bbox, (255, 0, 255), rt)
        # Top Left  x,y
        cv2.line(img, (x, y), (x + l, y), color, t)
        cv2.line(img, (x, y), (x, y + l), color, t)
        # Top Right  x1,y
        cv2.line(img, (x1, y), (x1 - l, y), color, t)
        cv2.line(img, (x1, y), (x1, y + l), color, t)
        # Bottom Left  x,y1
        cv2.line(img, (x, y1), (x + l, y1), color, t)
        cv2.line(img, (x, y1), (x, y1 - l), color, t)
        # Bottom Right  x1,y1
        cv2.line(img, (x1, y1), (x1 - l, y1), color, t)
        cv2.line(img, (x1, y1), (x1, y1 - l), color, t)
        return img

    def findHands(self, img, draw=True):
        bboxs = []
        bbox = 400 - 150, 320 - 260, 350, 370
        img = self.fancyDraw(img, bbox)
        hand = ''
        imgRGB = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        self.results = self.hands.process(imgRGB)
        if not self.results.multi_handedness == None and self.results.multi_handedness[0].classification[0].label == "Right":
            hand = "Right"

        if self.results.multi_hand_landmarks:
            for handLms in self.results.multi_hand_landmarks:
                if draw:
                    self.mpDraw.draw_landmarks(img, handLms,
                                               self.mpHands.HAND_CONNECTIONS)
        return img,hand

    def findPosition(self, img, handNo=0, draw=True):
        landmrk=[]
        gesture = ""
        if self.results.multi_hand_landmarks:
            handLms = self.results.multi_hand_landmarks[handNo]
            for id, lm in enumerate(handLms.landmark):
                h, w, c = img.shape
                # q = qx, qy, qz = int(lm.x * w), int(lm.y * h), int(lm.z * c)
                p0 = px, py, pz = int(handLms.landmark[0].x * w), int(handLms.landmark[0].y * h), int(
                    handLms.landmark[0].z * w)
                p4 = tx, ty, tz = int(handLms.landmark[4].x * w), int(handLms.landmark[4].y * h), int(
                    handLms.landmark[4].z * w)
                p8 = ix, iy, iz = int(handLms.landmark[8].x * w), int(handLms.landmark[8].y * h), int(
                    handLms.landmark[8].z * w)
                p12 = cx, cy, cz = int(handLms.landmark[12].x * w), int(handLms.landmark[12].y * h), int(
                    handLms.landmark[12].z * w)
                p17 = int(handLms.landmark[17].x * w), int(handLms.landmark[17].y * h), int(handLms.landmark[17].z * w)
                p20 = int(handLms.landmark[20].x * w), int(handLms.landmark[20].y * h), int(handLms.landmark[20].z * w)
                landmrk = p0, p4, p8, p12, p17, p20
                p5 = int(handLms.landmark[5].x * w), int(handLms.landmark[5].y * h), int(handLms.landmark[5].z * w)
                #p = int(handLms.landmark[9].x * w), int(handLms.landmark[9].y * h), int(handLms.landmark[9].z * w
                scale = (math.dist(p5, p17) + math.dist(p5, p0)) / (2*85)
                #75 - 85
                ang =  self.angle_between(p5,p0,p17)
                #print(scale, math.dist(p4, p0)/scale )


                # cv3.circle(img, (ix, iy), 15, (255, 0, 255), cv2.FILLED)
                # cv3.circle(img, (cx, cy), 15, (255, 0, 255), cv2.FILLED)
                #cv2.rectangle(img, (400 , 320 ), (500 , 420 ), (255, 0, 255), 1)

                cv2.rectangle(img, (px - 150, py + 10), (px + 100, py - 260), (255, 255, 0), 3)
                cv2.rectangle(img, (px - 152, py - 260), (px + 102, py - 292), (255, 255, 0), cv2.FILLED)
                if not self.detect_gesture(landmrk,scale) is None:
                    bbox = 400 - 150, 320 - 260, 350, 370
                    gesture = self.detect_gesture(landmrk,scale)
                    img = self.fancyDraw(img, bbox, color=(255,255,0))
                    cv2.putText(img, gesture, (px - 80, py - 260), cv2.FONT_HERSHEY_PLAIN, 3,
                                (255, 20, 255), 3)


                if draw:
                    cv2.circle(img, (cx, cy), 15, (255, 0, 255), cv2.FILLED)

        return landmrk,gesture


def main():
    pTime = 0
    cTime = 0
    cap = cv2.VideoCapture(0)
    detector = handDetector()
    while True:
        gesture = ""
        lmlist = []
        success, img = cap.read()
        img = cv2.flip(img,1)
        img, hand = detector.findHands(img)
        if hand == "Right":
            lmList, gesture = detector.findPosition(img, draw=False)
            if len(lmList) != 0:
                print(lmList[0])
                print(gesture)
        cTime = time.time()
        fps = 1 / (cTime - pTime)
        pTime = cTime

        cv2.putText(img, str(int(fps)), (10, 70), cv2.FONT_HERSHEY_PLAIN, 3,
                    (255, 0, 255), 3)

        cv2.imshow("Image", img)
        cv2.waitKey(1)


if __name__ == "__main__":
    main()
