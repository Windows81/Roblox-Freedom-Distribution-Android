.class final enum Lcom/roblox/client/signup/a$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/signup/a$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/a$g;

.field public static final enum b:Lcom/roblox/client/signup/a$g;

.field private static final synthetic c:[Lcom/roblox/client/signup/a$g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    new-instance v0, Lcom/roblox/client/signup/a$g;

    const-string v1, "USERNAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/signup/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    new-instance v0, Lcom/roblox/client/signup/a$g;

    const-string v1, "PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/signup/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/a$g;->b:Lcom/roblox/client/signup/a$g;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roblox/client/signup/a$g;

    sget-object v4, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/roblox/client/signup/a$g;->c:[Lcom/roblox/client/signup/a$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/a$g;
    .locals 1

    .line 80
    const-class v0, Lcom/roblox/client/signup/a$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/signup/a$g;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/signup/a$g;
    .locals 1

    .line 80
    sget-object v0, Lcom/roblox/client/signup/a$g;->c:[Lcom/roblox/client/signup/a$g;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/a$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/a$g;

    return-object v0
.end method
