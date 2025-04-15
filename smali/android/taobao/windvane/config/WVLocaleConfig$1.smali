.class Landroid/taobao/windvane/config/WVLocaleConfig$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVLocaleConfig;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/config/WVLocaleConfig;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVLocaleConfig;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVLocaleConfig$1;->this$0:Landroid/taobao/windvane/config/WVLocaleConfig;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVLocaleConfig$1;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig$1;->val$config:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wv_main_config"

    const-string v2, "locale"

    invoke-static {v1, v2, v0}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
