.class final Lrx/subjects/ReplaySubject$2;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;


# direct methods
.method constructor <init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$2;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    monitor-enter p1

    .line 108
    :try_start_1
    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v4, :cond_b

    .line 109
    :cond_9
    monitor-exit p1

    .line 138
    :cond_a
    :goto_a
    return-void

    .line 111
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 112
    const/4 v4, 0x1

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 113
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_47

    .line 114
    const/4 v3, 0x0

    .line 117
    .local v3, "skipFinal":Z
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "idx":I
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v2, v4, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    .line 119
    .local v2, "sidx":I
    if-eq v0, v2, :cond_30

    .line 120
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v1

    .line 121
    .local v1, "j":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 123
    .end local v1    # "j":Ljava/lang/Integer;
    :cond_30
    monitor-enter p1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_4f

    .line 124
    :try_start_31
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v4, v4, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-ne v2, v4, :cond_4a

    .line 125
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 126
    const/4 v3, 0x1

    .line 127
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4c

    .line 132
    if-nez v3, :cond_a

    .line 133
    monitor-enter p1

    .line 134
    const/4 v4, 0x0

    :try_start_40
    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 135
    monitor-exit p1

    goto :goto_a

    :catchall_44
    move-exception v4

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_44

    throw v4

    .line 113
    .end local v0    # "idx":I
    .end local v2    # "sidx":I
    .end local v3    # "skipFinal":Z
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v4

    .line 129
    .restart local v0    # "idx":I
    .restart local v2    # "sidx":I
    .restart local v3    # "skipFinal":Z
    :cond_4a
    :try_start_4a
    monitor-exit p1

    goto :goto_13

    :catchall_4c
    move-exception v4

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 132
    .end local v0    # "idx":I
    .end local v2    # "sidx":I
    :catchall_4f
    move-exception v4

    if-nez v3, :cond_57

    .line 133
    monitor-enter p1

    .line 134
    const/4 v5, 0x0

    :try_start_54
    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 135
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    :cond_57
    throw v4

    :catchall_58
    move-exception v4

    :try_start_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v4
.end method
