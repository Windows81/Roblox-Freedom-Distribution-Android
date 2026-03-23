.class public Lcom/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/b/a/a/g/h;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/b/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/a/g/c;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/b/a/a/k/b;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/b/a/a/g/c;Lcom/b/a/a/k/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/a/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-object p2, p0, Lcom/b/a/a/b;->e:Lcom/b/a/a/k/b;

    .line 35
    new-instance v0, Lcom/b/a/a/g/h;

    const-string v1, "jq_callback"

    invoke-direct {v0, p2, p1, v1}, Lcom/b/a/a/g/h;-><init>(Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    iput-object p1, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b;)Lcom/b/a/a/k/b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/b/a/a/b;->e:Lcom/b/a/a/k/b;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/b/a/a/b;->b()V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b;Lcom/b/a/a/g/a/b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/b/a/a/b;->a(Lcom/b/a/a/g/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b;Lcom/b/a/a/g/a/d;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/b/a/a/b;->a(Lcom/b/a/a/g/a/d;)V

    return-void
.end method

.method private a(Lcom/b/a/a/g/a/b;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->f()Lcom/b/a/a/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/b;->d(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->f()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;->d(Lcom/b/a/a/i;I)V

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->f()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->e()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;->b(Lcom/b/a/a/i;Z)V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->f()Lcom/b/a/a/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/b;->c(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 121
    :pswitch_4
    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->f()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/g/a/b;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;->c(Lcom/b/a/a/i;I)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/b/a/a/g/a/d;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/b/a/a/g/a/d;->c()Lcom/b/a/a/d$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/g/a/d;->d()Lcom/b/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/a/d$a;->a(Lcom/b/a/a/d;)V

    .line 103
    invoke-direct {p0}, Lcom/b/a/a/b;->a()V

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/b/a/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/b$1;-><init>(Lcom/b/a/a/b;)V

    const-string v2, "job-manager-callbacks"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method private b(Lcom/b/a/a/i;Z)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    .line 128
    invoke-interface {v0, p1, p2}, Lcom/b/a/a/b/a;->a(Lcom/b/a/a/i;Z)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private c(Lcom/b/a/a/i;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    .line 146
    invoke-interface {v0, p1}, Lcom/b/a/a/b/a;->b(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method private c(Lcom/b/a/a/i;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/b/a/a/b/a;->a(Lcom/b/a/a/i;I)V

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/b/a/a/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/b/a/a/i;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    .line 152
    invoke-interface {v0, p1}, Lcom/b/a/a/b/a;->a(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private d(Lcom/b/a/a/i;I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    .line 140
    invoke-interface {v0, p1, p2}, Lcom/b/a/a/b/a;->b(Lcom/b/a/a/i;I)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/d;Lcom/b/a/a/d$a;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/d;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/d;

    .line 207
    invoke-virtual {v0, p2, p1}, Lcom/b/a/a/g/a/d;->a(Lcom/b/a/a/d$a;Lcom/b/a/a/d;)V

    .line 208
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    .line 209
    invoke-direct {p0}, Lcom/b/a/a/b;->a()V

    .line 210
    return-void
.end method

.method public a(Lcom/b/a/a/i;)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/b;

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/g/a/b;->a(Lcom/b/a/a/i;I)V

    .line 193
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/a/i;I)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/b;

    .line 161
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Lcom/b/a/a/g/a/b;->a(Lcom/b/a/a/i;II)V

    .line 162
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/a/i;Z)V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/b;

    .line 183
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2}, Lcom/b/a/a/g/a/b;->a(Lcom/b/a/a/i;IZ)V

    .line 184
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0
.end method

.method public b(Lcom/b/a/a/i;)V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/b;

    .line 201
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/g/a/b;->a(Lcom/b/a/a/i;I)V

    .line 202
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0
.end method

.method public b(Lcom/b/a/a/i;I)V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/b;

    .line 174
    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p2}, Lcom/b/a/a/g/a/b;->a(Lcom/b/a/a/i;II)V

    .line 175
    iget-object v1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0
.end method
