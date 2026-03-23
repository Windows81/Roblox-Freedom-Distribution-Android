.class public final enum Lcom/roblox/client/components/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/components/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/components/q;

.field public static final enum b:Lcom/roblox/client/components/q;

.field public static final enum c:Lcom/roblox/client/components/q;

.field private static final synthetic e:[Lcom/roblox/client/components/q;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/roblox/client/components/q;

    const-string v1, "ALL"

    const-string v2, "all"

    invoke-direct {v0, v1, v3, v2}, Lcom/roblox/client/components/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/q;->a:Lcom/roblox/client/components/q;

    new-instance v0, Lcom/roblox/client/components/q;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/roblox/client/components/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/q;->b:Lcom/roblox/client/components/q;

    new-instance v0, Lcom/roblox/client/components/q;

    const-string v1, "MORE_ONLY"

    const-string v2, "more"

    invoke-direct {v0, v1, v5, v2}, Lcom/roblox/client/components/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/q;->c:Lcom/roblox/client/components/q;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/components/q;

    sget-object v1, Lcom/roblox/client/components/q;->a:Lcom/roblox/client/components/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/components/q;->b:Lcom/roblox/client/components/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/components/q;->c:Lcom/roblox/client/components/q;

    aput-object v1, v0, v5

    sput-object v0, Lcom/roblox/client/components/q;->e:[Lcom/roblox/client/components/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/roblox/client/components/q;->d:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/components/q;
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/roblox/client/components/q;->a:Lcom/roblox/client/components/q;

    invoke-virtual {v1}, Lcom/roblox/client/components/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    sget-object v0, Lcom/roblox/client/components/q;->a:Lcom/roblox/client/components/q;

    .line 23
    :goto_0
    return-object v0

    .line 20
    :cond_0
    sget-object v1, Lcom/roblox/client/components/q;->c:Lcom/roblox/client/components/q;

    invoke-virtual {v1}, Lcom/roblox/client/components/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/roblox/client/components/q;->c:Lcom/roblox/client/components/q;

    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/roblox/client/components/q;->b:Lcom/roblox/client/components/q;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/components/q;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/roblox/client/components/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/q;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/components/q;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/roblox/client/components/q;->e:[Lcom/roblox/client/components/q;

    invoke-virtual {v0}, [Lcom/roblox/client/components/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/components/q;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/roblox/client/components/q;->d:Ljava/lang/String;

    return-object v0
.end method
