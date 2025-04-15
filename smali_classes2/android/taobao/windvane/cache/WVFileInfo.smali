.class public Landroid/taobao/windvane/cache/WVFileInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_NULL:Ljava/lang/String; = ""

.field private static final DEFAULT_TIME_ZERO:Ljava/lang/String; = "0000000000000"

.field public static final DIVISION:C = '~'

.field private static final PARTITION:C = '_'


# instance fields
.field public encoding:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public expireTime:J

.field public fileName:Ljava/lang/String;

.field public lastModified:J

.field public mimeType:Ljava/lang/String;

.field public pos:J

.field public sha256ToHex:Ljava/lang/String;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/taobao/windvane/cache/WVFileInfo;)I
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    iget-wide v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public composeFileInfoStr()[B
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    const-string v3, "0000000000000"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    const/16 v2, 0x7e

    const/16 v6, 0x5f

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    iget-wide v7, p0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    cmp-long v1, v7, v4

    if-lez v1, :cond_2

    .line 9
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_2
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :goto_3
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_4

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_4
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :goto_5
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_6
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 25
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    :goto_7
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 28
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :goto_8
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_9

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 31
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :goto_9
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 34
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :goto_a
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 37
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    :goto_b
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "utf-8"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 40
    :cond_c
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_c
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeFileInfoStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileInfo"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_d
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertToFileInfo()Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v0}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    .line 3
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 4
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    .line 10
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    .line 11
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    iput-boolean v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    return-object v0
.end method
