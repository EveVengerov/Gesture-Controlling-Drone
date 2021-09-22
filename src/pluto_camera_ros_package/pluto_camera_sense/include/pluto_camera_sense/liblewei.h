//
// Created by vedanshi on 18/4/19.
//

#ifndef LEWEISTREAM_LIBLEWEI_H
#define LEWEISTREAM_LIBLEWEI_H


#ifdef __cplusplus
extern "C" {
#endif

#define LEWEI_ERROR_BASE		8000
#define LEWEI_ERROR_NOT_INITIALIZED	(LEWEI_ERROR_BASE+1)
#define LEWEI_ERROR_MALLOC_FAIL		(LEWEI_ERROR_BASE+2)
#define LEWEI_ERROR_NO_CALLBACK		(LEWEI_ERROR_BASE+3)
#define LEWEI_ERROR_SOCKET			(LEWEI_ERROR_BASE+4)
#define LEWEI_ERROR_CREATE_FILE		(LEWEI_ERROR_BASE+5)
#define LEWEI_ERROR_HD_FLAG_SET		(LEWEI_ERROR_BASE+6)


typedef struct _LEWEI_VIDEO_FRAME_T
{
    int64_t timestamp;
    uint32_t iFrame;
    uint32_t size;
    unsigned char *buf;			
} lewei_video_frame;

typedef void P_LEWEI_CALLBACK(void *param, lewei_video_frame *pframe);

void video_free_frame_ram(void *pFrame);


int lewei_initialize_stream();
void lewei_finalize_stream();
long lewei_start_stream(void *mydata, P_LEWEI_CALLBACK pcallback);
void lewei_stop_stream();
int lewei_set_HDflag (bool isHDStreaming);
int send_cmd_take_photo(const char *path);
int send_cmd_set_wifi_ssid(const char *ssid);
int send_cmd_set_wifi_password(const char* password);
int send_cmd_set_channel(uint8_t channel);
int send_cmd_lens_flip();
int send_cmd_get_lens_flip();


#ifdef __cplusplus
}
#endif

#endif //LEWEISTREAM_LIBLEWEI_H
