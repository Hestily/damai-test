.class Lcom/ali/mobisecenhance/ld/multidex/Locker;
.super Ljava/lang/Object;
.source "Locker.java"


# instance fields
.field private cacheLock:Ljava/nio/channels/FileLock;

.field private lockChannel:Ljava/nio/channels/FileChannel;

.field private lockFile:Ljava/io/File;

.field private lockRaf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/Locker;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "lockFile"    # Ljava/io/File;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/multidex/Locker;->lockFile:Ljava/io/File;

    .line 21
    return-void
.end method


# virtual methods
.method native close()V
.end method

.method native lock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native test()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
