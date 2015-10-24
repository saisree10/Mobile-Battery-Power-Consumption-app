.class public final enum Laxm;
.super Ljava/lang/Enum;
.source "UpdateConfig.java"


# static fields
.field public static final enum a:Laxm;

.field public static final enum b:Laxm;

.field public static final enum c:Laxm;

.field private static final synthetic e:[Laxm;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Laxm;

    const-string v1, "DEFAULT_VERSION"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Laxm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxm;->a:Laxm;

    new-instance v0, Laxm;

    const-string v1, "NO_NEW_VERSION"

    invoke-direct {v0, v1, v4, v3}, Laxm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxm;->b:Laxm;

    new-instance v0, Laxm;

    const-string v1, "HAS_NEW_VERSION"

    invoke-direct {v0, v1, v5, v4}, Laxm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxm;->c:Laxm;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Laxm;

    sget-object v1, Laxm;->a:Laxm;

    aput-object v1, v0, v3

    sget-object v1, Laxm;->b:Laxm;

    aput-object v1, v0, v4

    sget-object v1, Laxm;->c:Laxm;

    aput-object v1, v0, v5

    sput-object v0, Laxm;->e:[Laxm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Laxm;->d:I

    .line 50
    return-void
.end method

.method public static a(I)Laxm;
    .locals 5
    .parameter

    .prologue
    .line 57
    invoke-static {}, Laxm;->values()[Laxm;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 58
    invoke-virtual {v0}, Laxm;->a()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 62
    :goto_1
    return-object v0

    .line 57
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Laxm;->a:Laxm;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Laxm;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Laxm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laxm;

    return-object v0
.end method

.method public static values()[Laxm;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Laxm;->e:[Laxm;

    invoke-virtual {v0}, [Laxm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxm;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Laxm;->d:I

    return v0
.end method
