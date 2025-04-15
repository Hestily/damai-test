.class Landroid/taobao/windvane/jsbridge/api/WVMotion$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$500(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {v4}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$600(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 4
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 5
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 6
    aget p1, p1, v2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"alpha\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\",\"beta\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\",\"gama\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$300(Landroid/taobao/windvane/jsbridge/api/WVMotion;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$300(Landroid/taobao/windvane/jsbridge/api/WVMotion;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    const-string v1, "WV.Event.Motion.RotationRate"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$700(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V

    .line 11
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$602(Landroid/taobao/windvane/jsbridge/api/WVMotion;J)J

    return-void
.end method
