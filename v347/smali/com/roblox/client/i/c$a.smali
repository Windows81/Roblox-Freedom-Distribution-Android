.class final enum Lcom/roblox/client/i/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/i/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/i/c$a;

.field public static final enum b:Lcom/roblox/client/i/c$a;

.field public static final enum c:Lcom/roblox/client/i/c$a;

.field public static final enum d:Lcom/roblox/client/i/c$a;

.field private static final synthetic e:[Lcom/roblox/client/i/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/roblox/client/i/c$a;

    const-string v1, "APP_INIT_STATUS_NONE"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/i/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/i/c$a;->a:Lcom/roblox/client/i/c$a;

    .line 83
    new-instance v0, Lcom/roblox/client/i/c$a;

    const-string v1, "APP_INIT_STATUS_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/i/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/i/c$a;->b:Lcom/roblox/client/i/c$a;

    .line 84
    new-instance v0, Lcom/roblox/client/i/c$a;

    const-string v1, "APP_INIT_STATUS_OK"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/i/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/i/c$a;->c:Lcom/roblox/client/i/c$a;

    .line 85
    new-instance v0, Lcom/roblox/client/i/c$a;

    const-string v1, "APP_INIT_STATUS_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/i/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/i/c$a;->d:Lcom/roblox/client/i/c$a;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/i/c$a;

    sget-object v1, Lcom/roblox/client/i/c$a;->a:Lcom/roblox/client/i/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/i/c$a;->b:Lcom/roblox/client/i/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/i/c$a;->c:Lcom/roblox/client/i/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/i/c$a;->d:Lcom/roblox/client/i/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/roblox/client/i/c$a;->e:[Lcom/roblox/client/i/c$a;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/i/c$a;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/roblox/client/i/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/i/c$a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/i/c$a;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/roblox/client/i/c$a;->e:[Lcom/roblox/client/i/c$a;

    invoke-virtual {v0}, [Lcom/roblox/client/i/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/i/c$a;

    return-object v0
.end method
