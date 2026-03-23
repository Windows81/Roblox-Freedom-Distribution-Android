.class public Lcom/roblox/client/signup/multiscreen/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/roblox/client/signup/multiscreen/a/c$a;


# direct methods
.method private constructor <init>(ILcom/roblox/client/signup/multiscreen/a/c$a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/a/c;->a:I

    .line 15
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/a/c;->b:Lcom/roblox/client/signup/multiscreen/a/c$a;

    return-void
.end method

.method public static a(I)Lcom/roblox/client/signup/multiscreen/a/c;
    .locals 2

    .line 19
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/c;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/c$a;->a:Lcom/roblox/client/signup/multiscreen/a/c$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/a/c;-><init>(ILcom/roblox/client/signup/multiscreen/a/c$a;)V

    return-object v0
.end method

.method public static b(I)Lcom/roblox/client/signup/multiscreen/a/c;
    .locals 2

    .line 23
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/c;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/c$a;->b:Lcom/roblox/client/signup/multiscreen/a/c$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/a/c;-><init>(ILcom/roblox/client/signup/multiscreen/a/c$a;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/signup/multiscreen/a/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/c;->b:Lcom/roblox/client/signup/multiscreen/a/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
