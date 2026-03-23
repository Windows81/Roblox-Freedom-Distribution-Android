.class final enum Lcom/roblox/client/s/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/s/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/s/c$a;

.field public static final enum b:Lcom/roblox/client/s/c$a;

.field public static final enum c:Lcom/roblox/client/s/c$a;

.field public static final enum d:Lcom/roblox/client/s/c$a;

.field private static final synthetic e:[Lcom/roblox/client/s/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 141
    new-instance v0, Lcom/roblox/client/s/c$a;

    const-string v1, "APP_INIT_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/s/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$a;->a:Lcom/roblox/client/s/c$a;

    .line 142
    new-instance v0, Lcom/roblox/client/s/c$a;

    const-string v1, "APP_INIT_STATUS_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/s/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$a;->b:Lcom/roblox/client/s/c$a;

    .line 143
    new-instance v0, Lcom/roblox/client/s/c$a;

    const-string v1, "APP_INIT_STATUS_OK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/s/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$a;->c:Lcom/roblox/client/s/c$a;

    .line 144
    new-instance v0, Lcom/roblox/client/s/c$a;

    const-string v1, "APP_INIT_STATUS_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/s/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$a;->d:Lcom/roblox/client/s/c$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/roblox/client/s/c$a;

    .line 140
    sget-object v6, Lcom/roblox/client/s/c$a;->a:Lcom/roblox/client/s/c$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/roblox/client/s/c$a;->b:Lcom/roblox/client/s/c$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/s/c$a;->c:Lcom/roblox/client/s/c$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/roblox/client/s/c$a;->e:[Lcom/roblox/client/s/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/s/c$a;
    .locals 1

    .line 140
    const-class v0, Lcom/roblox/client/s/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/s/c$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/s/c$a;
    .locals 1

    .line 140
    sget-object v0, Lcom/roblox/client/s/c$a;->e:[Lcom/roblox/client/s/c$a;

    invoke-virtual {v0}, [Lcom/roblox/client/s/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/s/c$a;

    return-object v0
.end method
