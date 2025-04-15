.class public Landroid/taobao/windvane/log/TLogNewImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/log/IWMLog;


# static fields
.field private static newTLogEnable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTLogEnable(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/log/TLogNewImpl;->newTLogEnable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Landroid/taobao/windvane/log/TLogNewImpl;->newTLogEnable:Z

    return-void
.end method


# virtual methods
.method public writeLog(Landroid/taobao/windvane/log/LogData;)V
    .locals 10

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/log/TLogNewImpl;->newTLogEnable:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getExt()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v9, v0

    .line 4
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getModule()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p1}, Landroid/taobao/windvane/log/LogData;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-static/range {v1 .. v9}, Lcom/taobao/tao/log/TTraceLog;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
