from CppPythonSocket.server import Server
import cv2
import mediapipe as mp
import time
import HandTrackingModule as htm
import FaceDetection as fd



if __name__ == "__main__":
  server = Server("192.168.56.1", 5002)
  message = server.receive()
  print("[Client]:", message)
  server.send("Shut up and send an image\0")

  pTime = 0
  cTime = 0
  detector = htm.handDetector()
  facedetector = fd.FaceDetector()
  gesture = "none\0"

  while True:
    gesture = "none"
    lmlist = []
    img = server.receive_image()
    #print("[Client]: Sent image of size: " + str(img.size))
    img = cv2.flip(img, 1)
    #img, bboxs = facedetector.findFaces(img)
    #if len(bboxs) != 0:
    img, hand = detector.findHands(img, draw=True)
    if hand == "Right":
        lmList, gesture = detector.findPosition(img, draw=False)
        if len(lmList) != 0:
            print(lmList)

    cTime = time.time()
    fps = 1 / (cTime - pTime)
    pTime = cTime
    cv2.putText(img, str(int(fps)), (10, 70), cv2.FONT_HERSHEY_PLAIN, 3,(255, 0, 255), 3)

    cv2.imshow("image at server", img)
    cv2.waitKey(1)
    if img is None:
      break
    #a = raw_input("Server: ")
    #server.send(str(img.size))
    print(f'[Server]:', gesture)
    gesture = gesture+'\0'
    server.send(gesture)
    #server.send(str(lmlist[0]))
  cv2.destroyAllWindows()