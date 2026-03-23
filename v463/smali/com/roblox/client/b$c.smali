.class final enum Lcom/roblox/client/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/b$c;

.field public static final enum b:Lcom/roblox/client/b$c;

.field public static final enum c:Lcom/roblox/client/b$c;

.field private static final synthetic d:[Lcom/roblox/client/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/roblox/client/b$c;

    const-string v1, "SETTINGS_CHECK_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$c;->a:Lcom/roblox/client/b$c;

    .line 63
    new-instance v0, Lcom/roblox/client/b$c;

    const-string v1, "SETTINGS_CHECK_STATE_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$c;->b:Lcom/roblox/client/b$c;

    .line 64
    new-instance v0, Lcom/roblox/client/b$c;

    const-string v1, "SETTINGS_CHECK_STATE_DONE_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$c;->c:Lcom/roblox/client/b$c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/roblox/client/b$c;

    .line 61
    sget-object v5, Lcom/roblox/client/b$c;->a:Lcom/roblox/client/b$c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/roblox/client/b$c;->b:Lcom/roblox/client/b$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/roblox/client/b$c;->d:[Lcom/roblox/client/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/b$c;
    .locals 1

    .line 61
    const-class v0, Lcom/roblox/client/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/b$c;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/b$c;
    .locals 1

    .line 61
    sget-object v0, Lcom/roblox/client/b$c;->d:[Lcom/roblox/client/b$c;

    invoke-virtual {v0}, [Lcom/roblox/client/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/b$c;

    return-object v0
.end method
