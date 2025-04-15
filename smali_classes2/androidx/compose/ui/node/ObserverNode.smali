.class public interface abstract Landroidx/compose/ui/node/ObserverNode;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/node/DelegatableNode;


# annotations
.annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ObserverNode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ObserverNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/ObserverNode$Companion;->$$INSTANCE:Landroidx/compose/ui/node/ObserverNode$Companion;

    sput-object v0, Landroidx/compose/ui/node/ObserverNode;->Companion:Landroidx/compose/ui/node/ObserverNode$Companion;

    return-void
.end method


# virtual methods
.method public abstract onObservedReadsChanged()V
.end method
