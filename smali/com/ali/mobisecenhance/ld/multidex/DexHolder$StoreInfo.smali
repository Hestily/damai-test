.class Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;
.super Ljava/lang/Object;
.source "DexHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreInfo"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field index:I

.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/multidex/DexHolder;

.field type:I


# direct methods
.method constructor <init>(Lcom/ali/mobisecenhance/ld/multidex/DexHolder;IILjava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .param p2, "type"    # I
    .param p3, "index"    # I
    .param p4, "file"    # Ljava/io/File;

    .line 316
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;->this$0:Lcom/ali/mobisecenhance/ld/multidex/DexHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput p2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;->type:I

    .line 318
    iput p3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;->index:I

    .line 319
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;->file:Ljava/io/File;

    .line 320
    return-void
.end method
