.class public final enum Lbej;
.super Ljava/lang/Enum;
.source "XYMultipleSeriesRenderer.java"


# static fields
.field public static final enum a:Lbej;

.field public static final enum b:Lbej;

.field private static final synthetic d:[Lbej;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lbej;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3, v3}, Lbej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbej;->a:Lbej;

    new-instance v0, Lbej;

    const-string v1, "VERTICAL"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lbej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbej;->b:Lbej;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lbej;

    sget-object v1, Lbej;->a:Lbej;

    aput-object v1, v0, v3

    sget-object v1, Lbej;->b:Lbej;

    aput-object v1, v0, v4

    sput-object v0, Lbej;->d:[Lbej;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lbej;->c:I

    .line 123
    iput p3, p0, Lbej;->c:I

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbej;
    .locals 1
    .parameter

    .prologue
    .line 117
    const-class v0, Lbej;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbej;

    return-object v0
.end method

.method public static values()[Lbej;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lbej;->d:[Lbej;

    invoke-virtual {v0}, [Lbej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbej;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lbej;->c:I

    return v0
.end method
