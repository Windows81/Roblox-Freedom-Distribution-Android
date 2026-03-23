.class final enum Lcom/roblox/client/signup/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/signup/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/a$f;

.field public static final enum b:Lcom/roblox/client/signup/a$f;

.field private static final synthetic c:[Lcom/roblox/client/signup/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/roblox/client/signup/a$f;

    const-string v1, "USERNAME"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/signup/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    new-instance v0, Lcom/roblox/client/signup/a$f;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/signup/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/a$f;->b:Lcom/roblox/client/signup/a$f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/roblox/client/signup/a$f;

    sget-object v1, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/signup/a$f;->b:Lcom/roblox/client/signup/a$f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/roblox/client/signup/a$f;->c:[Lcom/roblox/client/signup/a$f;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/a$f;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/roblox/client/signup/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/a$f;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/signup/a$f;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/roblox/client/signup/a$f;->c:[Lcom/roblox/client/signup/a$f;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/a$f;

    return-object v0
.end method
