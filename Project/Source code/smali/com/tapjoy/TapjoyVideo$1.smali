.class Lcom/tapjoy/TapjoyVideo$1;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 155
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "videos?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 158
    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    #calls: Lcom/tapjoy/TapjoyVideo;->handleGetVideosResponse(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideo;->access$000(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)Z

    move-result v0

    .line 164
    :cond_0
    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    #calls: Lcom/tapjoy/TapjoyVideo;->validateCachedVideos()Z
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideo;->access$100(Lcom/tapjoy/TapjoyVideo;)Z

    .line 170
    const-string v0, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    if-eqz v0, :cond_1

    const-string v0, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 175
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 178
    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 179
    const/16 v2, 0x61a8

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 180
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 182
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideo;->access$202(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 184
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    #calls: Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideo;->access$300(Lcom/tapjoy/TapjoyVideo;)V

    .line 196
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    const/4 v1, 0x1

    #setter for: Lcom/tapjoy/TapjoyVideo;->initialized:Z
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideo;->access$402(Lcom/tapjoy/TapjoyVideo;Z)Z

    .line 201
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    #getter for: Lcom/tapjoy/TapjoyVideo;->cacheAuto:Z
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideo;->access$500(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "TapjoyVideo"

    const-string v1, "trying to cache because of cache_auto flag..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 207
    :cond_2
    const-string v0, "TapjoyVideo"

    const-string v1, "------------------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "TapjoyVideo"

    const-string v1, "------------------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "TapjoyVideo"

    const-string v1, "INIT DONE!"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "TapjoyVideo"

    const-string v1, "------------------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    goto :goto_1
.end method
