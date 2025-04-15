.class public final Landroidx/compose/foundation/MarqueeSpacing$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/MarqueeSpacing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/MarqueeSpacing$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/MarqueeSpacing$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/MarqueeSpacing$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/MarqueeSpacing$Companion;->$$INSTANCE:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fractionOfContainer(F)Landroidx/compose/foundation/MarqueeSpacing;
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/MarqueeSpacing$Companion$fractionOfContainer$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/MarqueeSpacing$Companion$fractionOfContainer$1;-><init>(F)V

    return-object v0
.end method
