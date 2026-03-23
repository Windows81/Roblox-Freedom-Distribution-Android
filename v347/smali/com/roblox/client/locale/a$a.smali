.class public final enum Lcom/roblox/client/locale/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/locale/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/locale/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/locale/a$a;

.field public static final enum b:Lcom/roblox/client/locale/a$a;

.field private static final synthetic c:[Lcom/roblox/client/locale/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/roblox/client/locale/a$a;

    const-string v1, "LOCALE_MODE_LOGIN_SIGN_UP"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/locale/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/locale/a$a;->a:Lcom/roblox/client/locale/a$a;

    .line 50
    new-instance v0, Lcom/roblox/client/locale/a$a;

    const-string v1, "LOCALE_MODE_GENERAL_EXPERIENCE"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/locale/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/roblox/client/locale/a$a;

    sget-object v1, Lcom/roblox/client/locale/a$a;->a:Lcom/roblox/client/locale/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/roblox/client/locale/a$a;->c:[Lcom/roblox/client/locale/a$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/locale/a$a;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/roblox/client/locale/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/locale/a$a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/locale/a$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/roblox/client/locale/a$a;->c:[Lcom/roblox/client/locale/a$a;

    invoke-virtual {v0}, [Lcom/roblox/client/locale/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/locale/a$a;

    return-object v0
.end method
