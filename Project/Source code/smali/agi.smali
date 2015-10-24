.class public Lagi;
.super Ljava/lang/Object;
.source "AppBatteryInfoData.java"


# instance fields
.field public A:D

.field public B:J

.field public C:[J

.field public D:D

.field public E:D

.field public F:[D

.field public G:D

.field public H:Ljava/util/ArrayList;

.field public a:J

.field public b:D

.field public c:D

.field public d:[D

.field public e:D

.field public f:D

.field public g:J

.field public h:J

.field public i:D

.field public j:D

.field public k:D

.field public l:J

.field public m:D

.field public n:D

.field public o:I

.field public p:D

.field public q:[D

.field public r:J

.field public s:[J

.field public t:J

.field public u:[I

.field public v:[J

.field public w:[I

.field public x:D

.field public y:D

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lagi;->H:Ljava/util/ArrayList;

    return-void
.end method

.method private a([D)Lorg/json/JSONArray;
    .locals 4
    .parameter

    .prologue
    .line 161
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 162
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 168
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :catch_0
    move-exception v1

    .line 171
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a([I)Lorg/json/JSONArray;
    .locals 3
    .parameter

    .prologue
    .line 178
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 179
    if-nez p1, :cond_0

    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 184
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 187
    goto :goto_0
.end method

.method private a([J)Lorg/json/JSONArray;
    .locals 4
    .parameter

    .prologue
    .line 191
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 192
    if-nez p1, :cond_0

    move-object v0, v1

    .line 199
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 196
    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 199
    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 203
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    :try_start_0
    const-string v2, "period"

    iget-wide v3, p0, Lagi;->a:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    const-string v2, "cpuIdle"

    iget-wide v3, p0, Lagi;->b:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 208
    const-string v2, "cpuAwake"

    iget-wide v3, p0, Lagi;->c:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    const-string v2, "cpuActive"

    iget-object v3, p0, Lagi;->d:[D

    invoke-direct {p0, v3}, Lagi;->a([D)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v2, "wifiScan"

    iget-wide v3, p0, Lagi;->e:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 211
    const-string v2, "wifiOn"

    iget-wide v3, p0, Lagi;->f:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 212
    const-string v2, "wifiOnTime"

    iget-wide v3, p0, Lagi;->g:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    const-string v2, "wifiRunningTime"

    iget-wide v3, p0, Lagi;->h:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 214
    const-string v2, "wifiActive"

    iget-wide v3, p0, Lagi;->i:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 215
    const-string v2, "gpsOn"

    iget-wide v3, p0, Lagi;->j:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 216
    const-string v2, "bluetoothOn"

    iget-wide v3, p0, Lagi;->k:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 217
    const-string v2, "bluetoothOnTime"

    iget-wide v3, p0, Lagi;->l:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    const-string v2, "bluetoothActive"

    iget-wide v3, p0, Lagi;->m:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 219
    const-string v2, "bluetoothAt"

    iget-wide v3, p0, Lagi;->n:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 220
    const-string v2, "bluetoothPingCount"

    iget v3, p0, Lagi;->o:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string v2, "screenOn"

    iget-wide v3, p0, Lagi;->p:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 222
    const-string v2, "radioOn"

    iget-object v3, p0, Lagi;->q:[D

    invoke-direct {p0, v3}, Lagi;->a([D)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v2, "phoneOnTime"

    iget-wide v3, p0, Lagi;->r:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string v2, "phoneSignalStrengthTime"

    iget-object v3, p0, Lagi;->s:[J

    invoke-direct {p0, v3}, Lagi;->a([J)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "phoneSignalStrengthCount"

    iget-object v3, p0, Lagi;->u:[I

    invoke-direct {p0, v3}, Lagi;->a([I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "phoneSignalScanningTime"

    iget-wide v3, p0, Lagi;->t:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    const-string v2, "phoneDataConnectionCount"

    iget-object v3, p0, Lagi;->w:[I

    invoke-direct {p0, v3}, Lagi;->a([I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v2, "phoneDataConnectionTime"

    iget-object v3, p0, Lagi;->v:[J

    invoke-direct {p0, v3}, Lagi;->a([J)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v2, "radioScanning"

    iget-wide v3, p0, Lagi;->x:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 230
    const-string v2, "radioActive"

    iget-wide v3, p0, Lagi;->y:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 231
    const-string v2, "radioDataUptime"

    iget-wide v3, p0, Lagi;->z:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    const-string v2, "screenFull"

    iget-wide v3, p0, Lagi;->A:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 233
    const-string v2, "screenOnTime"

    iget-wide v3, p0, Lagi;->B:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    const-string v2, "screenBrightnessTime"

    iget-object v3, p0, Lagi;->C:[J

    invoke-direct {p0, v3}, Lagi;->a([J)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v2, "dspAudio"

    iget-wide v3, p0, Lagi;->D:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 236
    const-string v2, "dspVideo"

    iget-wide v3, p0, Lagi;->E:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 237
    const-string v2, "cpuSpeeds"

    iget-object v3, p0, Lagi;->F:[D

    invoke-direct {p0, v3}, Lagi;->a([D)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v2, "batteryCapacity"

    iget-wide v3, p0, Lagi;->G:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 239
    const-string v2, "total"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    iget-object v0, p0, Lagi;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 241
    iget-object v3, v0, Latu;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Latu;->b:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v0}, Latu;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 248
    :cond_1
    return-object v1
.end method
