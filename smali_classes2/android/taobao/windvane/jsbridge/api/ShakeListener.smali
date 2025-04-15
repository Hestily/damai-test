.class public Landroid/taobao/windvane/jsbridge/api/ShakeListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_THRESHOLD:I = 0xa


# instance fields
.field protected TIME_INTERVAL_THRESHOLD:J

.field private mCheckFrequency:J

.field private mContext:Landroid/content/Context;

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->TIME_INTERVAL_THRESHOLD:J

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mCheckFrequency:J

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0xa

    .line 5
    div-long/2addr p2, v2

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    move-wide v0, p2

    :cond_0
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mCheckFrequency:J

    .line 6
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->start()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastUpdateTime:J

    sub-long v4, v2, v4

    .line 4
    iget-wide v6, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mCheckFrequency:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    .line 6
    aget v1, p1, v1

    const/4 v4, 0x2

    .line 7
    aget p1, p1, v4

    .line 8
    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    sub-float v4, v0, v4

    .line 9
    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    sub-float v5, v1, v5

    .line 10
    iget v6, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    sub-float v6, p1, v6

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    mul-float v6, v6, v6

    add-float/2addr v4, v6

    float-to-double v4, v4

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 12
    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    if-eqz v4, :cond_2

    if-eqz v4, :cond_2

    .line 13
    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 14
    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    invoke-interface {v4}, Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;->onShake()V

    .line 15
    :cond_2
    iput-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastUpdateTime:J

    .line 16
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    .line 17
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    .line 18
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/aopsdk/replace/android/hardware/SensorManager;->getDefaultSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "ShakeListener"

    const-string/jumbo v1, "start: Accelerometer not supported"

    .line 4
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnShakeListener(Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "ShakeListener"

    if-nez v0, :cond_0

    const-string/jumbo v0, "start: Sensors not supported"

    .line 2
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v2}, Lcom/alibaba/wireless/security/aopsdk/replace/android/hardware/SensorManager;->getDefaultSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string/jumbo v0, "start: Accelerometer not supported"

    .line 5
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method
