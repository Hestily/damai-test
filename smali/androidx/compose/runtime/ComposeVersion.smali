.class public final Landroidx/compose/runtime/ComposeVersion;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/ComposeVersion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final version:I = 0x23f0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ComposeVersion;

    invoke-direct {v0}, Landroidx/compose/runtime/ComposeVersion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ComposeVersion;->INSTANCE:Landroidx/compose/runtime/ComposeVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
