.class final Landroid/taobao/windvane/util/ConfigStorage$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/util/ConfigStorage;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$configVal:J

.field final synthetic val$spName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$spName:Ljava/lang/String;

    iput-object p2, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$configKey:Ljava/lang/String;

    iput-wide p3, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$configVal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$spName:Ljava/lang/String;

    iget-object v1, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$configKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/taobao/windvane/util/ConfigStorage;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 3
    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 4
    iget-wide v3, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$configVal:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {v1, v2}, Landroid/taobao/windvane/file/FileAccesser;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Landroid/taobao/windvane/util/ConfigStorage;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not sava file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/taobao/windvane/util/ConfigStorage$2;->val$configVal:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
