.class public Lbee;
.super Ljava/lang/Object;
.source "BasicStroke.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lbee;

.field public static final b:Lbee;

.field public static final c:Lbee;


# instance fields
.field private d:Landroid/graphics/Paint$Cap;

.field private e:Landroid/graphics/Paint$Join;

.field private f:F

.field private g:[F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f80

    .line 28
    new-instance v0, Lbee;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x4080

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lbee;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lbee;->a:Lbee;

    .line 30
    new-instance v0, Lbee;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x4120

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lbee;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lbee;->b:Lbee;

    .line 33
    new-instance v0, Lbee;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x40a0

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lbee;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lbee;->c:Lbee;

    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lbee;->d:Landroid/graphics/Paint$Cap;

    .line 57
    iput-object p2, p0, Lbee;->e:Landroid/graphics/Paint$Join;

    .line 58
    iput p3, p0, Lbee;->f:F

    .line 59
    iput-object p4, p0, Lbee;->g:[F

    .line 60
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbee;->d:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public b()Landroid/graphics/Paint$Join;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbee;->e:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lbee;->f:F

    return v0
.end method

.method public d()[F
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbee;->g:[F

    return-object v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lbee;->h:F

    return v0
.end method
