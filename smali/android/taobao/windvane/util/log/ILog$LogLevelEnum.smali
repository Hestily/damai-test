.class public final enum Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/util/log/ILog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevelEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;


# instance fields
.field private LogLevel:I

.field private LogLevelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const-string v3, "V"

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    const-string v5, "D"

    invoke-direct {v1, v3, v4, v4, v5}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v3, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string v5, "INFO"

    const/4 v6, 0x2

    const-string v7, "I"

    invoke-direct {v3, v5, v6, v6, v7}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v5, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string v7, "WARNING"

    const/4 v8, 0x3

    const-string v9, "W"

    invoke-direct {v5, v7, v8, v8, v9}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v7, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    const-string v11, "E"

    invoke-direct {v7, v9, v10, v10, v11}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p4, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    .line 3
    iput p3, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    return v0
.end method

.method public getLogLevelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    return-object v0
.end method
