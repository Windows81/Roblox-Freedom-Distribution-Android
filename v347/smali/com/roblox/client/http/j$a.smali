.class final enum Lcom/roblox/client/http/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/http/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/http/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/http/j$a;

.field public static final enum b:Lcom/roblox/client/http/j$a;

.field private static final synthetic c:[Lcom/roblox/client/http/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/roblox/client/http/j$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/http/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/http/j$a;->a:Lcom/roblox/client/http/j$a;

    new-instance v0, Lcom/roblox/client/http/j$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/http/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/http/j$a;->b:Lcom/roblox/client/http/j$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/roblox/client/http/j$a;

    sget-object v1, Lcom/roblox/client/http/j$a;->a:Lcom/roblox/client/http/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/http/j$a;->b:Lcom/roblox/client/http/j$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/roblox/client/http/j$a;->c:[Lcom/roblox/client/http/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/http/j$a;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/roblox/client/http/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/http/j$a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/http/j$a;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/roblox/client/http/j$a;->c:[Lcom/roblox/client/http/j$a;

    invoke-virtual {v0}, [Lcom/roblox/client/http/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/http/j$a;

    return-object v0
.end method
