.class public final enum Lcom/roblox/client/landing/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/l/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/landing/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/landing/d$b;",
        ">;",
        "Lcom/roblox/client/l/h;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/landing/d$b;

.field public static final enum b:Lcom/roblox/client/landing/d$b;

.field public static final enum c:Lcom/roblox/client/landing/d$b;

.field public static final enum d:Lcom/roblox/client/landing/d$b;

.field public static final enum e:Lcom/roblox/client/landing/d$b;

.field public static final enum f:Lcom/roblox/client/landing/d$b;

.field private static final synthetic h:[Lcom/roblox/client/landing/d$b;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "SIGN_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->a:Lcom/roblox/client/landing/d$b;

    .line 17
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "SIGN_UP_FROM_GUEST_DIALOG"

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->b:Lcom/roblox/client/landing/d$b;

    .line 18
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->c:Lcom/roblox/client/landing/d$b;

    .line 19
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "PLAY_NOW"

    invoke-direct {v0, v1, v5, v6}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->d:Lcom/roblox/client/landing/d$b;

    .line 20
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "ABOUT"

    invoke-direct {v0, v1, v6, v7}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->e:Lcom/roblox/client/landing/d$b;

    .line 21
    new-instance v0, Lcom/roblox/client/landing/d$b;

    const-string v1, "SWITCH_TO_LOGIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/roblox/client/landing/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/landing/d$b;->f:Lcom/roblox/client/landing/d$b;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/roblox/client/landing/d$b;

    const/4 v1, 0x0

    sget-object v2, Lcom/roblox/client/landing/d$b;->a:Lcom/roblox/client/landing/d$b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/roblox/client/landing/d$b;->b:Lcom/roblox/client/landing/d$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/landing/d$b;->c:Lcom/roblox/client/landing/d$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/landing/d$b;->d:Lcom/roblox/client/landing/d$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/landing/d$b;->e:Lcom/roblox/client/landing/d$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/landing/d$b;->f:Lcom/roblox/client/landing/d$b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/roblox/client/landing/d$b;->h:[Lcom/roblox/client/landing/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/roblox/client/landing/d$b;->g:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/landing/d$b;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/roblox/client/landing/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/landing/d$b;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/landing/d$b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/roblox/client/landing/d$b;->h:[Lcom/roblox/client/landing/d$b;

    invoke-virtual {v0}, [Lcom/roblox/client/landing/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/landing/d$b;

    return-object v0
.end method
