.class Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/IBodyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->setRequestBodyHandler(Lanetwork/channel/Request;Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field buffer:[B

.field curFilenum:I

.field dataValue:[B

.field fileNameValue:Ljava/lang/String;

.field hasInitilized:Z

.field instream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field isCompleted:Z

.field postedLen:I

.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

.field final synthetic val$dataMap:Ljava/util/Map;

.field final synthetic val$fileMap:Ljava/util/Map;

.field final synthetic val$totalFileNum:I


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;ILjava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iput p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$totalFileNum:I

    iput-object p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$fileMap:Ljava/util/Map;

    iput-object p4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$dataMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    .line 3
    iput p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->postedLen:I

    .line 4
    iput p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    const/4 p4, 0x0

    .line 5
    iput-object p4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->fileNameValue:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    .line 7
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->access$000(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->buffer:[B

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    .line 9
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->hasInitilized:Z

    return-void
.end method


# virtual methods
.method public initStream()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    :goto_0
    iget v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    iget v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$totalFileNum:I

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$fileMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->fileNameValue:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->val$dataMap:Ljava/util/Map;

    iget v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    .line 4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v1, v1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    array-length v5, v4

    invoke-direct {v3, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->fileNameValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->fileNameValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    iget v3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    invoke-static {v4}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->access$100(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    iget v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->fileNameValue:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    iget v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->dataValue:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    :goto_1
    iget v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->curFilenum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->hasInitilized:Z

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->hasInitilized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->initStream()V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->hasInitilized:Z

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    return v2

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->instream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 7
    :try_start_0
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    invoke-static {v4}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->access$000(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)I

    move-result v4

    array-length v5, p1

    if-le v4, v5, :cond_4

    array-length v4, p1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    invoke-static {v4}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->access$000(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)I

    move-result v4

    .line 8
    :goto_2
    iget-object v5, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->buffer:[B

    invoke-virtual {v3, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->buffer:[B

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->postedLen:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->postedLen:I

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p1, p1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read len="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    return v2

    .line 14
    :cond_5
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p1, p1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v0, "read finish"

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;->isCompleted:Z

    return v2
.end method
