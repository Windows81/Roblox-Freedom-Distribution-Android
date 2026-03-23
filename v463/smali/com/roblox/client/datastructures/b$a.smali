.class final enum Lcom/roblox/client/datastructures/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/datastructures/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/datastructures/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/datastructures/b$a;

.field public static final enum b:Lcom/roblox/client/datastructures/b$a;

.field private static final synthetic c:[Lcom/roblox/client/datastructures/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/roblox/client/datastructures/b$a;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/datastructures/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    new-instance v0, Lcom/roblox/client/datastructures/b$a;

    const-string v1, "PROCESSING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/datastructures/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/datastructures/b$a;->b:Lcom/roblox/client/datastructures/b$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roblox/client/datastructures/b$a;

    sget-object v4, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/roblox/client/datastructures/b$a;->c:[Lcom/roblox/client/datastructures/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/datastructures/b$a;
    .locals 1

    .line 17
    const-class v0, Lcom/roblox/client/datastructures/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/datastructures/b$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/datastructures/b$a;
    .locals 1

    .line 17
    sget-object v0, Lcom/roblox/client/datastructures/b$a;->c:[Lcom/roblox/client/datastructures/b$a;

    invoke-virtual {v0}, [Lcom/roblox/client/datastructures/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/datastructures/b$a;

    return-object v0
.end method
