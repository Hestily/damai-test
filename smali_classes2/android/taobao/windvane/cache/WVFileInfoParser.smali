.class public Landroid/taobao/windvane/cache/WVFileInfoParser;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final DEFAULT_MAX_AGE:J = 0x9a7ec800L

.field public static final FILE_INFO_MIN_LEN:I = 0x3c

.field public static final S_MAX_AGE:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileInfo(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 5

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_2

    const/16 v0, 0x1b

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v0}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    const-string/jumbo v1, "~"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    .line 8
    array-length v3, p0

    if-eq v1, v3, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 9
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 10
    :try_start_1
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x2

    .line 11
    aget-object v1, p0, v1

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const/4 v1, 0x3

    .line 12
    aget-object v1, p0, v1

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    const/4 v1, 0x4

    .line 13
    aget-object v1, p0, v1

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    const/4 v1, 0x5

    .line 14
    aget-object v1, p0, v1

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    const/4 v1, 0x6

    .line 15
    aget-object p0, p0, v1

    iput-object p0, v0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getFileInfo([BII)Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2
    invoke-static {v0}, Landroid/taobao/windvane/cache/WVFileInfoParser;->getFileInfo(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static refreshFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)V
    .locals 7

    const-string v0, "FileInfoParser"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/cache/WVFileInfo;->composeFileInfoStr()[B

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xa

    .line 5
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    :try_start_0
    iget-wide v5, p0, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    invoke-virtual {p1, v4, v5, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshFileInfo: write error. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "refreshFileInfo time cost:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 10

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const-string v1, "FileInfoParser"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFileInfo filename:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "operation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x0

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    iget-wide v8, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    cmp-long p0, v8, v4

    if-nez p0, :cond_2

    add-long/2addr v6, v2

    .line 5
    iput-wide v6, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 6
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFileInfo setPos error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". fChannel.size():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {p1, p2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->refreshFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 9
    iput-boolean p0, p1, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    .line 10
    invoke-static {p1, p2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->refreshFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    iget-wide v6, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    cmp-long p0, v6, v4

    if-nez p0, :cond_5

    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 14
    :cond_5
    invoke-static {p1, p2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->refreshFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {p1, p2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->refreshFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)V

    :goto_1
    return-object p1
.end method
