.class Lcom/roblox/client/signup/multiscreen/b/r$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/abtesting/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/r$a;->a(Lcom/roblox/client/signup/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/f;

.field final synthetic b:J

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/r$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;J)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->c:Lcom/roblox/client/signup/multiscreen/b/r$a;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->a:Lcom/roblox/client/signup/f;

    iput-wide p3, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->c:Lcom/roblox/client/signup/multiscreen/b/r$a;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->a:Lcom/roblox/client/signup/f;

    iget v1, v1, Lcom/roblox/client/signup/f;->d:I

    iget-wide v2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$1;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/r$a;->a(Lcom/roblox/client/signup/multiscreen/b/r$a;IJ)V

    return-void
.end method
