.class public final enum Lcom/roblox/client/signup/multiscreen/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/signup/multiscreen/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/multiscreen/b;

.field public static final enum b:Lcom/roblox/client/signup/multiscreen/b;

.field private static final synthetic c:[Lcom/roblox/client/signup/multiscreen/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/b;->a:Lcom/roblox/client/signup/multiscreen/b;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/b;

    const-string v1, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/signup/multiscreen/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/b;->b:Lcom/roblox/client/signup/multiscreen/b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roblox/client/signup/multiscreen/b;

    .line 3
    sget-object v4, Lcom/roblox/client/signup/multiscreen/b;->a:Lcom/roblox/client/signup/multiscreen/b;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/roblox/client/signup/multiscreen/b;->c:[Lcom/roblox/client/signup/multiscreen/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/b;
    .locals 1

    .line 3
    const-class v0, Lcom/roblox/client/signup/multiscreen/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/signup/multiscreen/b;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/signup/multiscreen/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b;->c:[Lcom/roblox/client/signup/multiscreen/b;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/multiscreen/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/multiscreen/b;

    return-object v0
.end method
