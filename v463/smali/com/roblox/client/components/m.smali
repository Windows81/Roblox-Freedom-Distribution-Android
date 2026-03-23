.class public final enum Lcom/roblox/client/components/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/components/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/components/m;

.field public static final enum b:Lcom/roblox/client/components/m;

.field public static final enum c:Lcom/roblox/client/components/m;

.field private static final synthetic e:[Lcom/roblox/client/components/m;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/roblox/client/components/m;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/m;->a:Lcom/roblox/client/components/m;

    new-instance v0, Lcom/roblox/client/components/m;

    const-string v1, "NONE"

    const/4 v3, 0x1

    const-string v4, "none"

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/m;->b:Lcom/roblox/client/components/m;

    new-instance v0, Lcom/roblox/client/components/m;

    const-string v1, "MORE_ONLY"

    const/4 v4, 0x2

    const-string v5, "more"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/components/m;->c:Lcom/roblox/client/components/m;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/roblox/client/components/m;

    .line 3
    sget-object v5, Lcom/roblox/client/components/m;->a:Lcom/roblox/client/components/m;

    aput-object v5, v1, v2

    sget-object v2, Lcom/roblox/client/components/m;->b:Lcom/roblox/client/components/m;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/roblox/client/components/m;->e:[Lcom/roblox/client/components/m;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/roblox/client/components/m;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/components/m;
    .locals 1

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 18
    sget-object v0, Lcom/roblox/client/components/m;->a:Lcom/roblox/client/components/m;

    invoke-virtual {v0}, Lcom/roblox/client/components/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object p0, Lcom/roblox/client/components/m;->a:Lcom/roblox/client/components/m;

    return-object p0

    .line 20
    :cond_0
    sget-object v0, Lcom/roblox/client/components/m;->c:Lcom/roblox/client/components/m;

    invoke-virtual {v0}, Lcom/roblox/client/components/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    sget-object p0, Lcom/roblox/client/components/m;->c:Lcom/roblox/client/components/m;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/roblox/client/components/m;->b:Lcom/roblox/client/components/m;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/components/m;
    .locals 1

    .line 3
    const-class v0, Lcom/roblox/client/components/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/components/m;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/components/m;
    .locals 1

    .line 3
    sget-object v0, Lcom/roblox/client/components/m;->e:[Lcom/roblox/client/components/m;

    invoke-virtual {v0}, [Lcom/roblox/client/components/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/components/m;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/roblox/client/components/m;->d:Ljava/lang/String;

    return-object v0
.end method
