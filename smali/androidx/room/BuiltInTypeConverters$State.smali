.class public final enum Landroidx/room/BuiltInTypeConverters$State;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/BuiltInTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/room/BuiltInTypeConverters$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/room/BuiltInTypeConverters$State;

.field public static final enum DISABLED:Landroidx/room/BuiltInTypeConverters$State;

.field public static final enum ENABLED:Landroidx/room/BuiltInTypeConverters$State;

.field public static final enum INHERITED:Landroidx/room/BuiltInTypeConverters$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/room/BuiltInTypeConverters$State;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/BuiltInTypeConverters$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/BuiltInTypeConverters$State;->ENABLED:Landroidx/room/BuiltInTypeConverters$State;

    .line 2
    new-instance v1, Landroidx/room/BuiltInTypeConverters$State;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/room/BuiltInTypeConverters$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/room/BuiltInTypeConverters$State;->DISABLED:Landroidx/room/BuiltInTypeConverters$State;

    .line 3
    new-instance v3, Landroidx/room/BuiltInTypeConverters$State;

    const-string v5, "INHERITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/room/BuiltInTypeConverters$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/room/BuiltInTypeConverters$State;->INHERITED:Landroidx/room/BuiltInTypeConverters$State;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/room/BuiltInTypeConverters$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroidx/room/BuiltInTypeConverters$State;->$VALUES:[Landroidx/room/BuiltInTypeConverters$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/BuiltInTypeConverters$State;
    .locals 1

    .line 1
    const-class v0, Landroidx/room/BuiltInTypeConverters$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/BuiltInTypeConverters$State;

    return-object p0
.end method

.method public static values()[Landroidx/room/BuiltInTypeConverters$State;
    .locals 1

    .line 1
    sget-object v0, Landroidx/room/BuiltInTypeConverters$State;->$VALUES:[Landroidx/room/BuiltInTypeConverters$State;

    invoke-virtual {v0}, [Landroidx/room/BuiltInTypeConverters$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/BuiltInTypeConverters$State;

    return-object v0
.end method
