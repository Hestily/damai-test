.class abstract Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.super Ljava/lang/Object;
.source "DexHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;,
        Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;,
        Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexBuffer;,
        Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;,
        Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;
    }
.end annotation


# instance fields
.field mFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtainValidDexBuffer(Landroid/content/SharedPreferences;ILjava/io/File;Ljava/io/File;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .locals 2
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "secondaryNumber"    # I
    .param p2, "validDexFile"    # Ljava/io/File;
    .param p3, "optDexFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putTypeInfo(Landroid/content/SharedPreferences$Editor;II)V

    .line 81
    invoke-static {v0, p1, p2}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putDexFileInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexBuffer;

    invoke-direct {v1, p1, p2, p3}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexBuffer;-><init>(ILjava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method static obtainValidDexOpt(Landroid/content/SharedPreferences;ILjava/io/File;Ljava/io/File;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .locals 3
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "secondaryNumber"    # I
    .param p2, "validDexFile"    # Ljava/io/File;
    .param p3, "optDexFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putTypeInfo(Landroid/content/SharedPreferences$Editor;II)V

    .line 100
    invoke-static {v0, p1, p3}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putDexOptInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;-><init>(ILjava/io/File;Ljava/io/File;Z)V

    return-object v1
.end method

.method static obtainValidForceDexOpt(Landroid/content/SharedPreferences;ILjava/io/File;Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .locals 4
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "secondaryNumber"    # I
    .param p2, "dexFile"    # Ljava/io/File;
    .param p3, "optDexFile"    # Ljava/io/File;
    .param p4, "apkZipFile"    # Ljava/util/zip/ZipFile;
    .param p5, "dexFileEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {p4, p5, p2}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->obtainEntryFileInZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 90
    .local v0, "validDexFile":Ljava/io/File;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 91
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putTypeInfo(Landroid/content/SharedPreferences$Editor;II)V

    .line 92
    invoke-static {v1, p1, v0}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putDexFileInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    new-instance v2, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, p3, v3}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;-><init>(ILjava/io/File;Ljava/io/File;Z)V

    return-object v2
.end method

.method static obtainValidZipDex(Landroid/content/SharedPreferences;ILjava/io/File;Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;
    .locals 2
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "secondaryNumber"    # I
    .param p2, "validZipFile"    # Ljava/io/File;
    .param p3, "validZipOptFile"    # Ljava/io/File;
    .param p4, "apkZipFile"    # Ljava/util/zip/ZipFile;
    .param p5, "dexFileEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p4, p5, p2}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->obtainZipForEntryFileInZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putTypeInfo(Landroid/content/SharedPreferences$Editor;II)V

    .line 109
    invoke-static {v0, p1, p2}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->putZipOptInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;

    invoke-direct {v1, p1, p2, p3}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;-><init>(ILjava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private static putDexFileInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V
    .locals 9
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "secondaryNumber"    # I
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const-string v0, "dex.checksum."

    .line 52
    .local v0, "keyCheckSum":Ljava/lang/String;
    invoke-static {p2}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->doFileCheckSum(Ljava/io/File;)J

    move-result-wide v1

    .line 53
    .local v1, "checkSum":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v3, "dex.time."

    .line 56
    .local v3, "keyTime":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 57
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Put f key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " checksum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static putDexOptInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V
    .locals 9
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "secondaryNumber"    # I
    .param p2, "optFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string v0, "odex.checksum."

    .line 66
    .local v0, "keyCheckSum":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 67
    .local v1, "checkSum":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v3, "odex.time."

    .line 70
    .local v3, "keyTime":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 71
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Put o key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " checksum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static putTypeInfo(Landroid/content/SharedPreferences$Editor;II)V
    .locals 4
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "secondaryNumber"    # I
    .param p2, "type"    # I

    .line 31
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "putTypeInfo %d Type %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logDebug(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dex.obj.type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    return-void
.end method

.method private static putZipOptInfo(Landroid/content/SharedPreferences$Editor;ILjava/io/File;)V
    .locals 9
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "secondaryNumber"    # I
    .param p2, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-string v0, "dex.checksum."

    .line 38
    .local v0, "keyCheckSum":Ljava/lang/String;
    invoke-static {p2}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->doZipCheckSum(Ljava/io/File;)J

    move-result-wide v1

    .line 39
    .local v1, "checkSum":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v3, "dex.time."

    .line 42
    .local v3, "keyTime":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 43
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Put z key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " checksum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method abstract getInfo()Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;
.end method

.method abstract toDexFile()Ljava/lang/Object;
.end method

.method protected toDexListElement(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;)Ljava/lang/Object;
    .locals 2
    .param p1, "elementConstructor"    # Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->toDexFile()Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "dexFile":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->mFile:Ljava/io/File;

    invoke-interface {p1, v1, v0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;->newInstance(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method abstract toFasterHolder(Landroid/content/SharedPreferences;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end method
