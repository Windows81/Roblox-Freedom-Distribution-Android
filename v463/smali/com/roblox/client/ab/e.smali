.class public final enum Lcom/roblox/client/ab/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/ab/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/ab/e;

.field public static final enum b:Lcom/roblox/client/ab/e;

.field public static final enum c:Lcom/roblox/client/ab/e;

.field private static final synthetic e:[Lcom/roblox/client/ab/e;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/roblox/client/ab/e;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    const-string v3, "Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/ab/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    new-instance v0, Lcom/roblox/client/ab/e;

    const-string v1, "DARK"

    const/4 v3, 0x1

    const-string v4, "Dark"

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/ab/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/ab/e;->b:Lcom/roblox/client/ab/e;

    new-instance v0, Lcom/roblox/client/ab/e;

    const-string v1, "CLASSIC"

    const/4 v4, 0x2

    const-string v5, "Classic"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/ab/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/ab/e;->c:Lcom/roblox/client/ab/e;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/roblox/client/ab/e;

    .line 3
    sget-object v5, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    aput-object v5, v1, v2

    sget-object v2, Lcom/roblox/client/ab/e;->b:Lcom/roblox/client/ab/e;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/roblox/client/ab/e;->e:[Lcom/roblox/client/ab/e;

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
    iput-object p3, p0, Lcom/roblox/client/ab/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/ab/e;
    .locals 4

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "default"

    :goto_0
    const/4 v0, -0x1

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2eef76

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x6233516

    if-eq v1, v2, :cond_2

    const v2, 0x32e13892

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "classic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "dark"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    .line 22
    sget-object p0, Lcom/roblox/client/ab/e;->c:Lcom/roblox/client/ab/e;

    return-object p0

    .line 21
    :cond_5
    sget-object p0, Lcom/roblox/client/ab/e;->b:Lcom/roblox/client/ab/e;

    return-object p0

    .line 20
    :cond_6
    sget-object p0, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/ab/e;
    .locals 1

    .line 3
    const-class v0, Lcom/roblox/client/ab/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/ab/e;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/ab/e;
    .locals 1

    .line 3
    sget-object v0, Lcom/roblox/client/ab/e;->e:[Lcom/roblox/client/ab/e;

    invoke-virtual {v0}, [Lcom/roblox/client/ab/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/ab/e;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/roblox/client/ab/e;->d:Ljava/lang/String;

    return-object v0
.end method
