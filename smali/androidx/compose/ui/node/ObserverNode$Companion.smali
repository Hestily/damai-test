.class public final Landroidx/compose/ui/node/ObserverNode$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/node/ObserverNode$Companion;

.field private static final OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/ObserverNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/ObserverNode$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/node/ObserverNode$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/ObserverNode$Companion;->$$INSTANCE:Landroidx/compose/ui/node/ObserverNode$Companion;

    .line 1
    sget-object v0, Landroidx/compose/ui/node/ObserverNode$Companion$OnObserveReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/ObserverNode$Companion$OnObserveReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/ObserverNode$Companion;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOnObserveReadsChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/ObserverNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/node/ObserverNode$Companion;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
