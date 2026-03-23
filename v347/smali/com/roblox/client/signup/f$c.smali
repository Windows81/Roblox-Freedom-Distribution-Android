.class public final enum Lcom/roblox/client/signup/f$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/l/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/signup/f$c;",
        ">;",
        "Lcom/roblox/client/l/h;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/f$c;

.field public static final enum b:Lcom/roblox/client/signup/f$c;

.field public static final enum c:Lcom/roblox/client/signup/f$c;

.field public static final enum d:Lcom/roblox/client/signup/f$c;

.field public static final enum e:Lcom/roblox/client/signup/f$c;

.field public static final enum f:Lcom/roblox/client/signup/f$c;

.field public static final enum g:Lcom/roblox/client/signup/f$c;

.field public static final enum h:Lcom/roblox/client/signup/f$c;

.field public static final enum i:Lcom/roblox/client/signup/f$c;

.field public static final enum j:Lcom/roblox/client/signup/f$c;

.field public static final enum k:Lcom/roblox/client/signup/f$c;

.field public static final enum l:Lcom/roblox/client/signup/f$c;

.field private static final synthetic n:[Lcom/roblox/client/signup/f$c;


# instance fields
.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "SIGN_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->a:Lcom/roblox/client/signup/f$c;

    .line 17
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->b:Lcom/roblox/client/signup/f$c;

    .line 18
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "SWITCH_TO_LOGIN"

    invoke-direct {v0, v1, v5, v6}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->c:Lcom/roblox/client/signup/f$c;

    .line 19
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "BIRTH_DAY_SELECTED"

    invoke-direct {v0, v1, v6, v7}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->d:Lcom/roblox/client/signup/f$c;

    .line 20
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "BIRTH_MONTH_SELECTED"

    invoke-direct {v0, v1, v7, v8}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->e:Lcom/roblox/client/signup/f$c;

    .line 21
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "BIRTH_YEAR_SELECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->f:Lcom/roblox/client/signup/f$c;

    .line 22
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "USERNAME_ENTERED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->g:Lcom/roblox/client/signup/f$c;

    .line 23
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "PASSWORD_ENTERED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->h:Lcom/roblox/client/signup/f$c;

    .line 24
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "PASSWORD_CONFIRMATION_ENTERED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->i:Lcom/roblox/client/signup/f$c;

    .line 25
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "GENDER_SELECTED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->j:Lcom/roblox/client/signup/f$c;

    .line 26
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "TERMS_OF_PRIVACY_CHECK_CHANGED"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->k:Lcom/roblox/client/signup/f$c;

    .line 27
    new-instance v0, Lcom/roblox/client/signup/f$c;

    const-string v1, "GET_USERNAME_SUGGESTION"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/signup/f$c;->l:Lcom/roblox/client/signup/f$c;

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/roblox/client/signup/f$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/roblox/client/signup/f$c;->a:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    sget-object v1, Lcom/roblox/client/signup/f$c;->b:Lcom/roblox/client/signup/f$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/signup/f$c;->c:Lcom/roblox/client/signup/f$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/signup/f$c;->d:Lcom/roblox/client/signup/f$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/signup/f$c;->e:Lcom/roblox/client/signup/f$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/roblox/client/signup/f$c;->f:Lcom/roblox/client/signup/f$c;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/client/signup/f$c;->g:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/client/signup/f$c;->h:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/client/signup/f$c;->i:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/roblox/client/signup/f$c;->j:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/roblox/client/signup/f$c;->k:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/roblox/client/signup/f$c;->l:Lcom/roblox/client/signup/f$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/signup/f$c;->n:[Lcom/roblox/client/signup/f$c;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/roblox/client/signup/f$c;->m:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/f$c;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/roblox/client/signup/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/f$c;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/signup/f$c;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/roblox/client/signup/f$c;->n:[Lcom/roblox/client/signup/f$c;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/f$c;

    return-object v0
.end method
