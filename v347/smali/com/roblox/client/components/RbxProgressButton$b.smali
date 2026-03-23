.class public final enum Lcom/roblox/client/components/RbxProgressButton$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/components/RbxProgressButton$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/components/RbxProgressButton$b;

.field public static final enum b:Lcom/roblox/client/components/RbxProgressButton$b;

.field private static final synthetic c:[Lcom/roblox/client/components/RbxProgressButton$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/roblox/client/components/RbxProgressButton$b;

    const-string v1, "SHOW_BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 45
    new-instance v0, Lcom/roblox/client/components/RbxProgressButton$b;

    const-string v1, "SHOW_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/components/RbxProgressButton$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/roblox/client/components/RbxProgressButton$b;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->c:[Lcom/roblox/client/components/RbxProgressButton$b;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/components/RbxProgressButton$b;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton$b;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/components/RbxProgressButton$b;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->c:[Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0}, [Lcom/roblox/client/components/RbxProgressButton$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/components/RbxProgressButton$b;

    return-object v0
.end method
