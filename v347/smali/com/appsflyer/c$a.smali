.class public final enum Lcom/appsflyer/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appsflyer/c$a;

.field public static final enum b:Lcom/appsflyer/c$a;

.field public static final enum c:Lcom/appsflyer/c$a;

.field public static final enum d:Lcom/appsflyer/c$a;

.field public static final enum e:Lcom/appsflyer/c$a;

.field public static final enum f:Lcom/appsflyer/c$a;

.field private static final synthetic h:[Lcom/appsflyer/c$a;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->a:Lcom/appsflyer/c$a;

    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->b:Lcom/appsflyer/c$a;

    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v6, v6}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->c:Lcom/appsflyer/c$a;

    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v7, v7}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->d:Lcom/appsflyer/c$a;

    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v8, v8}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->e:Lcom/appsflyer/c$a;

    new-instance v0, Lcom/appsflyer/c$a;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/c$a;->f:Lcom/appsflyer/c$a;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appsflyer/c$a;

    sget-object v1, Lcom/appsflyer/c$a;->a:Lcom/appsflyer/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/c$a;->b:Lcom/appsflyer/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/c$a;->c:Lcom/appsflyer/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/c$a;->d:Lcom/appsflyer/c$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/c$a;->e:Lcom/appsflyer/c$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/appsflyer/c$a;->f:Lcom/appsflyer/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appsflyer/c$a;->h:[Lcom/appsflyer/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/appsflyer/c$a;->g:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/c$a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/appsflyer/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/c$a;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/c$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/appsflyer/c$a;->h:[Lcom/appsflyer/c$a;

    invoke-virtual {v0}, [Lcom/appsflyer/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/appsflyer/c$a;->g:I

    return v0
.end method
