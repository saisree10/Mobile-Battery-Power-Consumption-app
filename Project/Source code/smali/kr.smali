.class public final enum Lkr;
.super Ljava/lang/Enum;
.source "CMSFrontRestService.java"


# static fields
.field public static final enum a:Lkr;

.field public static final enum b:Lkr;

.field public static final enum c:Lkr;

.field private static final synthetic e:[Lkr;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lkr;

    const-string v1, "DEFAULT"

    const-string v2, "sort"

    invoke-direct {v0, v1, v3, v2}, Lkr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkr;->a:Lkr;

    .line 84
    new-instance v0, Lkr;

    const-string v1, "UPDATE"

    const-string v2, "modifiedTime"

    invoke-direct {v0, v1, v4, v2}, Lkr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkr;->b:Lkr;

    .line 85
    new-instance v0, Lkr;

    const-string v1, "DOWNLOAD"

    const-string v2, "downloadCount"

    invoke-direct {v0, v1, v5, v2}, Lkr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkr;->c:Lkr;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lkr;

    sget-object v1, Lkr;->a:Lkr;

    aput-object v1, v0, v3

    sget-object v1, Lkr;->b:Lkr;

    aput-object v1, v0, v4

    sget-object v1, Lkr;->c:Lkr;

    aput-object v1, v0, v5

    sput-object v0, Lkr;->e:[Lkr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lkr;->d:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkr;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lkr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkr;

    return-object v0
.end method

.method public static values()[Lkr;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lkr;->e:[Lkr;

    array-length v1, v0

    new-array v2, v1, [Lkr;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lkr;->d:Ljava/lang/String;

    return-object v0
.end method
