.class public final Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/tooling/CompositionDataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;->$$INSTANCE:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/tooling/CompositionDataRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/tooling/CompositionDataRecordImpl;

    invoke-direct {v0}, Landroidx/compose/ui/tooling/CompositionDataRecordImpl;-><init>()V

    return-object v0
.end method
