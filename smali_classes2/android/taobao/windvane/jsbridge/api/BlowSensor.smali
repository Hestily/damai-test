.class public Landroid/taobao/windvane/jsbridge/api/BlowSensor;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final BLOW_HANDLER_BLOWING:I = 0x1005

.field public static final BLOW_HANDLER_FAIL:I = 0x1006


# instance fields
.field private BLOW_ACTIVI:I

.field private SAMPLE_RATE_IN_HZ:I

.field private ar:Landroid/media/AudioRecord;

.field private bs:I

.field private buffer:[B

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private number:I

.field private time:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->SAMPLE_RATE_IN_HZ:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v1, 0x1

    .line 5
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    const/16 v1, 0xbb8

    .line 6
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->BLOW_ACTIVI:I

    .line 7
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x10

    const/4 v1, 0x2

    .line 8
    invoke-static {v0, p1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    .line 9
    new-instance p1, Landroid/media/AudioRecord;

    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->SAMPLE_RATE_IN_HZ:I

    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->recordBlow()V

    return-void
.end method

.method private recordBlow()V
    .locals 9

    .line 1
    :try_start_0
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v2, 0x8

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 6
    aget-byte v7, v5, v6

    aget-byte v5, v5, v6

    mul-int v7, v7, v5

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_0
    div-int/2addr v4, v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 9
    iget-wide v7, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    sub-long/2addr v5, v2

    add-long/2addr v7, v5

    iput-wide v7, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v7, v2

    if-gez v0, :cond_1

    .line 10
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 11
    :cond_1
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->BLOW_ACTIVI:I

    if-le v4, v0, :cond_2

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1005

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v0, 0x1

    .line 14
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :catch_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public start()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 2
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    .line 3
    new-instance v1, Ljava/util/Timer;

    const-string v0, "WVBlowTimer"

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mTimer:Ljava/util/Timer;

    .line 4
    new-instance v2, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;-><init>(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
