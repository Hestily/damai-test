.class public Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/cache/WVFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FixedSizeLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/cache/WVFileCache;


# direct methods
.method protected constructor <init>(Landroid/taobao/windvane/cache/WVFileCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-static {v1}, Landroid/taobao/windvane/cache/WVFileCache;->access$000(Landroid/taobao/windvane/cache/WVFileCache;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/taobao/windvane/cache/WVFileCache;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEldestEntry, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/taobao/windvane/cache/WVFileInfo;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroid/taobao/windvane/cache/WVFileInfo;

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-static {v1}, Landroid/taobao/windvane/cache/WVFileCache;->access$200(Landroid/taobao/windvane/cache/WVFileCache;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;->this$0:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-static {v1}, Landroid/taobao/windvane/cache/WVFileCache;->access$300(Landroid/taobao/windvane/cache/WVFileCache;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
