.class public Lcom/tapjoy/mraid/listener/Accel;
.super Ljava/lang/Object;
.source "Accel.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final FORCE_THRESHOLD:I = 0x3e8

.field private static final SHAKE_COUNT:I = 0x2

.field private static final SHAKE_DURATION:I = 0x7d0

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private bAccReady:Z

.field private bMagReady:Z

.field private mAccVals:[F

.field private mActualOrientation:[F

.field mKey:Ljava/lang/String;

.field private mLastAccVals:[F

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mMagVals:[F

.field mSensorController:Lcom/tapjoy/mraid/controller/MraidSensor;

.field private mSensorDelay:I

.field private mShakeCount:I

.field registeredHeadingListeners:I

.field registeredShakeListeners:I

.field registeredTiltListeners:I

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/mraid/controller/MraidSensor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    .line 42
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    .line 43
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    .line 46
    iput v1, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorDelay:I

    .line 52
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    .line 55
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastAccVals:[F

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mActualOrientation:[F

    .line 66
    iput-object p2, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorController:Lcom/tapjoy/mraid/controller/MraidSensor;

    .line 67
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    .line 68
    return-void

    .line 52
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
    .end array-data
.end method

.method private start()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorDelay:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 163
    :cond_0
    return-void
.end method

.method private startMag()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorDelay:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 138
    invoke-direct {p0}, Lcom/tapjoy/mraid/listener/Accel;->start()V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mActualOrientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter

    .prologue
    const/16 v1, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mMagVals:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/mraid/listener/Accel;->bAccReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/mraid/listener/Accel;->bMagReady:Z

    if-eqz v0, :cond_0

    .line 198
    iput-boolean v6, p0, Lcom/tapjoy/mraid/listener/Accel;->bAccReady:Z

    .line 199
    iput-boolean v6, p0, Lcom/tapjoy/mraid/listener/Accel;->bMagReady:Z

    .line 200
    new-array v0, v1, [F

    .line 201
    new-array v1, v1, [F

    .line 202
    iget-object v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    iget-object v3, p0, Lcom/tapjoy/mraid/listener/Accel;->mMagVals:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 204
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->mActualOrientation:[F

    .line 206
    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->mActualOrientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 207
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorController:Lcom/tapjoy/mraid/controller/MraidSensor;

    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->mActualOrientation:[F

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/controller/MraidSensor;->onHeadingChange(F)V

    .line 209
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastForce:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 213
    iput v6, p0, Lcom/tapjoy/mraid/listener/Accel;->mShakeCount:I

    .line 216
    :cond_1
    iget-wide v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 217
    iget-wide v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastTime:J

    sub-long v2, v0, v2

    .line 218
    iget-object v4, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastAccVals:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastAccVals:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastAccVals:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    .line 222
    const/high16 v3, 0x447a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 224
    iget v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mShakeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mShakeCount:I

    if-lt v2, v8, :cond_2

    iget-wide v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastShake:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 225
    iput-wide v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastShake:J

    .line 226
    iput v6, p0, Lcom/tapjoy/mraid/listener/Accel;->mShakeCount:I

    .line 227
    iget-object v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorController:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/controller/MraidSensor;->onShake()V

    .line 229
    :cond_2
    iput-wide v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastForce:J

    .line 231
    :cond_3
    iput-wide v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastTime:J

    .line 232
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorController:Lcom/tapjoy/mraid/controller/MraidSensor;

    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    aget v3, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/mraid/controller/MraidSensor;->onTilt(FFF)V

    .line 237
    :cond_4
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mMagVals:[F

    .line 188
    iput-boolean v7, p0, Lcom/tapjoy/mraid/listener/Accel;->bMagReady:Z

    goto/16 :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mLastAccVals:[F

    .line 193
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->mAccVals:[F

    .line 194
    iput-boolean v7, p0, Lcom/tapjoy/mraid/listener/Accel;->bAccReady:Z

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSensorDelay(I)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/tapjoy/mraid/listener/Accel;->mSensorDelay:I

    .line 77
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    if-lez v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/listener/Accel;->stop()V

    .line 79
    invoke-direct {p0}, Lcom/tapjoy/mraid/listener/Accel;->start()V

    .line 81
    :cond_1
    return-void
.end method

.method public startTrackingHeading()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/tapjoy/mraid/listener/Accel;->startMag()V

    .line 128
    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    .line 129
    return-void
.end method

.method public startTrackingShake()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/listener/Accel;->setSensorDelay(I)V

    .line 107
    invoke-direct {p0}, Lcom/tapjoy/mraid/listener/Accel;->start()V

    .line 109
    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    .line 110
    return-void
.end method

.method public startTrackingTilt()V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/tapjoy/mraid/listener/Accel;->start()V

    .line 89
    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    .line 90
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Accel;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    .line 253
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    .line 254
    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/listener/Accel;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrackingHeading()V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/tapjoy/mraid/listener/Accel;->stop()V

    .line 151
    :cond_0
    return-void
.end method

.method public stopTrackingShake()V
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredShakeListeners:I

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/listener/Accel;->setSensorDelay(I)V

    .line 118
    invoke-virtual {p0}, Lcom/tapjoy/mraid/listener/Accel;->stop()V

    .line 120
    :cond_0
    return-void
.end method

.method public stopTrackingTilt()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/listener/Accel;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/tapjoy/mraid/listener/Accel;->stop()V

    .line 99
    :cond_0
    return-void
.end method
