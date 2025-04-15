.class Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/runtimepermission/PermissionActivity;->requestCustomPermission([Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/runtimepermission/PermissionActivity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/runtimepermission/PermissionActivity;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;->this$0:Landroid/taobao/windvane/runtimepermission/PermissionActivity;

    iput-object p2, p0, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;->this$0:Landroid/taobao/windvane/runtimepermission/PermissionActivity;

    iget-object v0, p0, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;->val$permissions:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
