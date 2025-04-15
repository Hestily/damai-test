.class Landroid/taobao/windvane/config/WVConfigManager$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/config/WVConfigManager;

.field final synthetic val$configName:Ljava/lang/String;

.field final synthetic val$defaultUrl:Ljava/lang/String;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$configName:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$version:Ljava/lang/String;

    iput-object p4, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$defaultUrl:Ljava/lang/String;

    iput-object p5, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$configName:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$version:Ljava/lang/String;

    iget-object v3, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$defaultUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/taobao/windvane/config/WVConfigManager$3;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/config/WVConfigManager;->access$200(Landroid/taobao/windvane/config/WVConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    return-void
.end method
