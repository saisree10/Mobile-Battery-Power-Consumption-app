.class public Lavm;
.super Ljava/lang/Object;
.source "TigerGameView.java"


# static fields
.field public static final a:[I

.field private static final e:[Ljava/lang/String;

.field private static final f:[[I


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "reward_0"

    aput-object v1, v0, v4

    const-string v1, "reward_1"

    aput-object v1, v0, v5

    const-string v1, "reward_2"

    aput-object v1, v0, v6

    const-string v1, "reward_3"

    aput-object v1, v0, v2

    sput-object v0, Lavm;->e:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lavm;->a:[I

    .line 52
    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    sput-object v0, Lavm;->f:[[I

    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lavm;->b:Ljava/lang/String;

    .line 74
    iput p2, p0, Lavm;->c:I

    .line 75
    iput-object p3, p0, Lavm;->d:[I

    .line 76
    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lavm;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 67
    new-instance v2, Lavm;

    sget-object v3, Lavm;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lavm;->a:[I

    aget v4, v4, v0

    sget-object v5, Lavm;->f:[[I

    aget-object v5, v5, v0

    invoke-direct {v2, v3, v4, v5}, Lavm;-><init>(Ljava/lang/String;I[I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method
