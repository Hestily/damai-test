.class public Lcom/ali/mobisecenhance/ld/RecordLog;
.super Ljava/lang/Object;
.source "RecordLog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    const-class v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/RecordLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native initRecordFile()V
.end method

.method private native record(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public native e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected native getConfig()Ljava/lang/String;
.end method

.method public native v(Ljava/lang/String;Ljava/lang/String;)I
.end method
