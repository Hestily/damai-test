.class public Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field rootDir:Ljava/io/File;

.field storage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getStorage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->storage:Ljava/lang/String;

    return-object v0
.end method

.method public setRootDir(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->rootDir:Ljava/io/File;

    return-void
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->storage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->rootDir:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "error file, "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->storage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
