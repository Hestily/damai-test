.class public final Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/constraintlayout/core/state/RegistryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/compose/EditableJSONLayout;->initialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\tH\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "androidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1",
        "Landroidx/constraintlayout/core/state/RegistryCallback;",
        "",
        "content",
        "",
        "onNewMotionScene",
        "",
        "progress",
        "onProgress",
        "",
        "width",
        "height",
        "onDimensions",
        "currentMotionScene",
        "currentLayoutInformation",
        "mode",
        "setLayoutInformationMode",
        "",
        "getLastModified",
        "debugMode",
        "setDrawDebug",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/compose/EditableJSONLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentLayoutInformation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-static {v0}, Landroidx/constraintlayout/compose/EditableJSONLayout;->access$getLayoutInformation$p(Landroidx/constraintlayout/compose/EditableJSONLayout;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentMotionScene()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-static {v0}, Landroidx/constraintlayout/compose/EditableJSONLayout;->access$getCurrentContent$p(Landroidx/constraintlayout/compose/EditableJSONLayout;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-static {v0}, Landroidx/constraintlayout/compose/EditableJSONLayout;->access$getLast$p(Landroidx/constraintlayout/compose/EditableJSONLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onDimensions(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/compose/EditableJSONLayout;->onNewDimensions(II)V

    return-void
.end method

.method public onNewMotionScene(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/compose/EditableJSONLayout;->onNewContent(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/compose/EditableJSONLayout;->onNewProgress(F)V

    return-void
.end method

.method public setDrawDebug(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/compose/EditableJSONLayout;->onDrawDebug(I)V

    return-void
.end method

.method public setLayoutInformationMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/EditableJSONLayout$initialization$callback$1;->this$0:Landroidx/constraintlayout/compose/EditableJSONLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/compose/EditableJSONLayout;->onLayoutInformation(I)V

    return-void
.end method
