.class public final enum Lbcq;
.super Ljava/lang/Enum;
.source "TrustDefenderMobile.java"


# static fields
.field public static final enum a:Lbcq;

.field public static final enum b:Lbcq;

.field public static final enum c:Lbcq;

.field public static final enum d:Lbcq;

.field public static final enum e:Lbcq;

.field public static final enum f:Lbcq;

.field public static final enum g:Lbcq;

.field public static final enum h:Lbcq;

.field public static final enum i:Lbcq;

.field private static final synthetic l:[Lbcq;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    new-instance v0, Lbcq;

    const-string v1, "THM_NotYet"

    const-string v2, "Not Yet"

    const-string v3, "Profile request has returned but not yet completed"

    invoke-direct {v0, v1, v5, v2, v3}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->a:Lbcq;

    .line 93
    new-instance v0, Lbcq;

    const-string v1, "THM_OK"

    const-string v2, "Okay"

    const-string v3, "Completed, No errors"

    invoke-direct {v0, v1, v6, v2, v3}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->b:Lbcq;

    .line 94
    new-instance v0, Lbcq;

    const-string v1, "THM_Connection_Error"

    const-string v2, "Connection Error"

    const-string v3, "There has been a connection issue, profiling incomplete"

    invoke-direct {v0, v1, v7, v2, v3}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->c:Lbcq;

    .line 95
    new-instance v0, Lbcq;

    const-string v1, "THM_HostNotFound_Error"

    const-string v2, "Host Not Found"

    const-string v3, "Unable to resolve the host name"

    invoke-direct {v0, v1, v8, v2, v3}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->d:Lbcq;

    .line 96
    new-instance v0, Lbcq;

    const-string v1, "THM_NetworkTimeout_Error"

    const-string v2, "Network Timeout"

    const-string v3, "Communications layer timed out"

    invoke-direct {v0, v1, v9, v2, v3}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->e:Lbcq;

    .line 97
    new-instance v0, Lbcq;

    const-string v1, "THM_Internal_Error"

    const/4 v2, 0x5

    const-string v3, "Internal Error"

    const-string v4, "Internal Error, profiling incomplete or interrupted"

    invoke-direct {v0, v1, v2, v3, v4}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->f:Lbcq;

    .line 98
    new-instance v0, Lbcq;

    const-string v1, "THM_HostVerification_Error"

    const/4 v2, 0x6

    const-string v3, "Host Verification Error"

    const-string v4, "Host name doesn\'t match certificate! Potential MITM attack"

    invoke-direct {v0, v1, v2, v3, v4}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->g:Lbcq;

    .line 99
    new-instance v0, Lbcq;

    const-string v1, "THM_Interrupted_Error"

    const/4 v2, 0x7

    const-string v3, "Interrupted"

    const-string v4, "Request was cancelled"

    invoke-direct {v0, v1, v2, v3, v4}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->h:Lbcq;

    .line 100
    new-instance v0, Lbcq;

    const-string v1, "THM_InvalidOrgID"

    const/16 v2, 0x8

    const-string v3, "Invalid ORG ID"

    const-string v4, "Request contained an invalid org id"

    invoke-direct {v0, v1, v2, v3, v4}, Lbcq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbcq;->i:Lbcq;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Lbcq;

    sget-object v1, Lbcq;->a:Lbcq;

    aput-object v1, v0, v5

    sget-object v1, Lbcq;->b:Lbcq;

    aput-object v1, v0, v6

    sget-object v1, Lbcq;->c:Lbcq;

    aput-object v1, v0, v7

    sget-object v1, Lbcq;->d:Lbcq;

    aput-object v1, v0, v8

    sget-object v1, Lbcq;->e:Lbcq;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lbcq;->f:Lbcq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbcq;->g:Lbcq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbcq;->h:Lbcq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbcq;->i:Lbcq;

    aput-object v2, v0, v1

    sput-object v0, Lbcq;->l:[Lbcq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Lbcq;->j:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lbcq;->k:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbcq;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lbcq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcq;

    return-object v0
.end method

.method public static values()[Lbcq;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lbcq;->l:[Lbcq;

    invoke-virtual {v0}, [Lbcq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcq;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lbcq;->j:Ljava/lang/String;

    return-object v0
.end method
