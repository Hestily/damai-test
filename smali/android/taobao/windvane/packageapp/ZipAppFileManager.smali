.class public Landroid/taobao/windvane/packageapp/ZipAppFileManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;
    }
.end annotation


# static fields
.field private static zipAppFileManager:Landroid/taobao/windvane/packageapp/ZipAppFileManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDecider:Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PackageApp-ZipAppFileManager"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private deleteDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    invoke-static {v3}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getFileAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFileAbsolutePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 4
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    sget-object p2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .line 6
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 10
    sget-object p2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget-object p2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_ZCACHE_DIR:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/ZipAppFileManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->zipAppFileManager:Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->zipAppFileManager:Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->zipAppFileManager:Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->zipAppFileManager:Landroid/taobao/windvane/packageapp/ZipAppFileManager;

    return-object v0
.end method

.method private saveFile(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/file/FileAccesser;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write file:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  exception:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clearAppsDir()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public clearTmpDir(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;Z)Z

    move-result p1

    return p1
.end method

.method public clearZCacheDir()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public copyZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    const/4 v4, 0x0

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v2, v4, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v1, p1}, Landroid/taobao/windvane/file/FileManager;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public createZipAppInitDir()Z
    .locals 7

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    iget-object v2, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir: dir["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public deleteHisZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v3, v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->deleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public getDownLoadPath()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_DOWNLOAD__DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalConfigPath(Z)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->H5_APPS_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNewRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v3, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNewZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreloadInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    .line 2
    :catch_0
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "preload package not exists"

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootPathApps()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootPathTmp()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZcacheConfigPath(Z)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->H5_ZCACHE_MAP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/file/FileAccesser;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/file/FileAccesser;->read(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppConstants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 6
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readConfig:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] data is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFile:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] exception:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public readGlobalConfig(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getGlobalConfigPath(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readZcacheConfig(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZcacheConfigPath(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readZipAppResByte(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/file/FileAccesser;->read(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized saveGlobalConfig([BZ)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getGlobalConfigPath(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->saveFile(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveZcacheConfig([BZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZcacheConfigPath(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->saveFile(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public saveZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;[BZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->saveFile(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public setZipDegradeDecider(Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->mDecider:Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;

    return-void
.end method

.method public unZipToTmp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/lang/String;)Z

    const-string v1, ""

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v4, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->mDecider:Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v4}, Landroid/taobao/windvane/packageapp/ZipAppFileManager$ZipDegradeDecider;->needDegrade()Z

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 5
    sget-object v4, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v4, v4, Landroid/taobao/windvane/config/WVCommonConfigData;->needZipDegrade:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->setReadOnly()Z

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/taobao/windvane/file/FileManager;->unZipByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v3, v0}, Ljava/io/File;->setWritable(Z)Z

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/taobao/windvane/file/FileManager;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "success"

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete temp file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZipAppFileManager;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "unZipToTemp"

    invoke-static {v0, v3, p2, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 14
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->needZipDegrade:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    const/4 v0, -0x2

    .line 15
    :goto_3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getZipUrl()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UnzipError"

    .line 17
    invoke-interface {v2, v3, v0, p2, p1}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-object v1
.end method
