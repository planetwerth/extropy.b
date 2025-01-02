class PainOfTruth:
    def __init__(self, reality, illusion):
        self.reality = reality  # What is real, the harsh truth
        self.illusion = illusion  # The comfortable, but false, perception
        self.truth_exposed = False
        self.suffering = 0  # Represents the intensity of the emotional toll

    def face_truth(self):
        # The process of exposing the truth
        self.suffering += 1  # Suffering increases as truth is revealed
        self.illusion = None  # Illusions fade away
        self.truth_exposed = True
        return self.reveal_truth()

    def reveal_truth(self):
        # When the truth is revealed, it feels like a burden
        truth_revealed = f"The truth is: {self.reality}. The world will never look the same."
        self.suffering *= 2  # The pain intensifies with full realization
        return truth_revealed

class TruthSeeker:
    def __init__(self, perception, desire_for_truth):
        self.perception = perception  # How they see the world before facing the truth
        self.desire_for_truth = desire_for_truth  # Whether they want to confront the truth
        self.breaking_point = 5  # How much pain they can take before they snap
        self.truth_exposed = False

    def begin_journey(self):
        if self.desire_for_truth:
            # Seeking truth leads to confrontation with reality
            return self.confront_truth()
        else:
            return "The truth is not sought. The illusion remains intact."

    def confront_truth(self):
        # Confronting the truth brings immense internal conflict
        pain_of_truth = PainOfTruth("The world is chaotic, unjust, and indifferent.", self.perception)
        while pain_of_truth.suffering < self.breaking_point:
            # Suffering increases with each step toward the truth
            self.perception = self.evolve_perception(pain_of_truth.suffering)
            pain_of_truth.face_truth()
        
        # After reaching the breaking point, truth is fully realized
        self.truth_exposed = True
        return f"After enduring the pain of truth, {pain_of_truth.reveal_truth()}"

    def evolve_perception(self, suffering):
        # As the truth is faced, perception shifts dramatically
        return f"Perception shifts with suffering level: {suffering}. The mind expands, but at a cost."

# A seeker approaches the truth, ready to endure the pain.
truth_seeker = TruthSeeker("Life is fair, the world makes sense.", True)
journey_result = truth_seeker.begin_journey()

print(journey_result)
