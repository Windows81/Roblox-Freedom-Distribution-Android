.class public final enum Lcom/roblox/engine/jni/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/engine/jni/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/engine/jni/a;

.field public static final enum b:Lcom/roblox/engine/jni/a;

.field public static final enum c:Lcom/roblox/engine/jni/a;

.field public static final enum d:Lcom/roblox/engine/jni/a;

.field public static final enum e:Lcom/roblox/engine/jni/a;

.field public static final enum f:Lcom/roblox/engine/jni/a;

.field public static final enum g:Lcom/roblox/engine/jni/a;

.field public static final enum h:Lcom/roblox/engine/jni/a;

.field public static final enum i:Lcom/roblox/engine/jni/a;

.field private static final synthetic j:[Lcom/roblox/engine/jni/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->a:Lcom/roblox/engine/jni/a;

    .line 6
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "OPEN_APP"

    invoke-direct {v0, v1, v4}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->b:Lcom/roblox/engine/jni/a;

    .line 7
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_CHAT_TAB"

    invoke-direct {v0, v1, v5}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->c:Lcom/roblox/engine/jni/a;

    .line 8
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_CONVERSATION_ENTRY"

    invoke-direct {v0, v1, v6}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->d:Lcom/roblox/engine/jni/a;

    .line 9
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_AVATAR_TAB"

    invoke-direct {v0, v1, v7}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->e:Lcom/roblox/engine/jni/a;

    .line 10
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "READ_CONVERSATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->f:Lcom/roblox/engine/jni/a;

    .line 11
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_HOME_PAGE_TAB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->g:Lcom/roblox/engine/jni/a;

    .line 12
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_GAME_PAGE_TAB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->h:Lcom/roblox/engine/jni/a;

    .line 13
    new-instance v0, Lcom/roblox/engine/jni/a;

    const-string v1, "TAP_MORE_PAGE_TAB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/roblox/engine/jni/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/engine/jni/a;->i:Lcom/roblox/engine/jni/a;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/roblox/engine/jni/a;

    sget-object v1, Lcom/roblox/engine/jni/a;->a:Lcom/roblox/engine/jni/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/engine/jni/a;->b:Lcom/roblox/engine/jni/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/engine/jni/a;->c:Lcom/roblox/engine/jni/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/engine/jni/a;->d:Lcom/roblox/engine/jni/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/engine/jni/a;->e:Lcom/roblox/engine/jni/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/roblox/engine/jni/a;->f:Lcom/roblox/engine/jni/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/engine/jni/a;->g:Lcom/roblox/engine/jni/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/engine/jni/a;->h:Lcom/roblox/engine/jni/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/engine/jni/a;->i:Lcom/roblox/engine/jni/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/engine/jni/a;->j:[Lcom/roblox/engine/jni/a;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/engine/jni/a;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/roblox/engine/jni/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/jni/a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/engine/jni/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/roblox/engine/jni/a;->j:[Lcom/roblox/engine/jni/a;

    invoke-virtual {v0}, [Lcom/roblox/engine/jni/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/engine/jni/a;

    return-object v0
.end method
