.class Landroidx/profileinstaller/DexProfileData;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field final apkName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field classSetSize:I

.field classes:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final dexChecksum:J

.field final dexName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final hotMethodRegionSize:I

.field mTypeIdCount:J

.field final methods:Ljava/util/TreeMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final numMethodIds:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIII[ILjava/util/TreeMap;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/TreeMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJIII[I",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/profileinstaller/DexProfileData;->apkName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/profileinstaller/DexProfileData;->dexName:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Landroidx/profileinstaller/DexProfileData;->dexChecksum:J

    .line 5
    iput-wide p5, p0, Landroidx/profileinstaller/DexProfileData;->mTypeIdCount:J

    .line 6
    iput p7, p0, Landroidx/profileinstaller/DexProfileData;->classSetSize:I

    .line 7
    iput p8, p0, Landroidx/profileinstaller/DexProfileData;->hotMethodRegionSize:I

    .line 8
    iput p9, p0, Landroidx/profileinstaller/DexProfileData;->numMethodIds:I

    .line 9
    iput-object p10, p0, Landroidx/profileinstaller/DexProfileData;->classes:[I

    .line 10
    iput-object p11, p0, Landroidx/profileinstaller/DexProfileData;->methods:Ljava/util/TreeMap;

    return-void
.end method
