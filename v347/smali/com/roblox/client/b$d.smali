.class final enum Lcom/roblox/client/b$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/b$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/b$d;

.field public static final enum b:Lcom/roblox/client/b$d;

.field public static final enum c:Lcom/roblox/client/b$d;

.field private static final synthetic d:[Lcom/roblox/client/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/roblox/client/b$d;

    const-string v1, "SETTINGS_CHECK_STATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$d;->a:Lcom/roblox/client/b$d;

    .line 38
    new-instance v0, Lcom/roblox/client/b$d;

    const-string v1, "SETTINGS_CHECK_STATE_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$d;->b:Lcom/roblox/client/b$d;

    .line 39
    new-instance v0, Lcom/roblox/client/b$d;

    const-string v1, "SETTINGS_CHECK_STATE_DONE_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b$d;->c:Lcom/roblox/client/b$d;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/b$d;

    sget-object v1, Lcom/roblox/client/b$d;->a:Lcom/roblox/client/b$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/b$d;->b:Lcom/roblox/client/b$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/b$d;->c:Lcom/roblox/client/b$d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/roblox/client/b$d;->d:[Lcom/roblox/client/b$d;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/b$d;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/roblox/client/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/b$d;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/b$d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/roblox/client/b$d;->d:[Lcom/roblox/client/b$d;

    invoke-virtual {v0}, [Lcom/roblox/client/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/b$d;

    return-object v0
.end method
